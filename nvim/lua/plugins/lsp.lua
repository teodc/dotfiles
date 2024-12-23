-- LSP Plugins
return {
  {
    -- https://github.com/folke/lazydev.nvim
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      library = {
        -- Load luvit types when the `vim.uv` word is found
        { path = 'luvit-meta/library', words = { 'vim%.uv' } },
      },
    },
  },
  {
    -- https://github.com/Bilal2453/luvit-meta
    'Bilal2453/luvit-meta',
    lazy = true,
  },
  {
    -- https://github.com/neovim/nvim-lspconfig
    'neovim/nvim-lspconfig',
    dependencies = {
      -- Automatically install LSPs and related tools to stdpath for Neovim
      -- NOTE: Must be loaded before dependants
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
      'WhoIsSethDaniel/mason-tool-installer.nvim',
      -- Useful status updates for LSP.
      {
        'j-hui/fidget.nvim',
        opts = {
          progress = {
            display = {
              done_icon = '✓', -- Icon shown when all LSP progress tasks are complete
            },
          },
          notification = {
            window = {
              winblend = 0, -- Background color opacity in the notification window
            },
          },
        },
      },
      -- Allows extra capabilities provided by nvim-cmp
      'hrsh7th/cmp-nvim-lsp',
    },
    config = function()
      require('lspconfig.ui.windows').default_options.border = 'rounded'

      --  This function gets run when an LSP attaches to a particular buffer.
      --   That is to say, every time a new file is opened that is associated with
      --   an lsp (for example, opening `main.rs` is associated with `rust_analyzer`) this
      --   function will be executed to configure the current buffer.
      vim.api.nvim_create_autocmd('LspAttach', {
        group = vim.api.nvim_create_augroup('kickstart-lsp-attach', { clear = true }),
        callback = function(event)
          -- In this case, we create a function that lets us more easily define mappings specific
          -- for LSP related items. It sets the mode, buffer and description for us each time.
          local map = function(keys, func, desc, mode)
            mode = mode or 'n'
            vim.keymap.set(mode, keys, func, { buffer = event.buf, desc = 'LSP: ' .. desc })
          end

          -- Jump to the definition of the word under your cursor.
          --  This is where a variable was first declared, or where a function is defined, etc.
          --  To jump back, press <C-t>.
          map('<leader>gd', require('telescope.builtin').lsp_definitions, 'Goto definition')

          -- Find references for the word under your cursor.
          map('<leader>gr', require('telescope.builtin').lsp_references, 'Goto references')

          -- Jump to the implementation of the word under your cursor.
          --  Useful when your language has ways of declaring types without an actual implementation.
          map('<leader>gi', require('telescope.builtin').lsp_implementations, 'Goto implementation')

          -- Jump to the type of the word under your cursor.
          --  Useful when you're not sure what type a variable is and you want to see
          --  the definition of its *type*, not where it was *defined*.
          map('<leader>gt', require('telescope.builtin').lsp_type_definitions, 'Goto type definition')

          -- Fuzzy find all the symbols in your current document.
          --  Symbols are things like variables, functions, types, etc.
          map('<leader>ss', require('telescope.builtin').lsp_document_symbols, 'Search document symbols')

          -- Fuzzy find all the symbols in your current workspace.
          --  Similar to document symbols, except searches over your entire project.
          map('<leader>sS', require('telescope.builtin').lsp_dynamic_workspace_symbols, 'Search workspace symbols')

          -- Rename the variable under your cursor.
          --  Most Language Servers support renaming across files, etc.
          map('<leader>rr', vim.lsp.buf.rename, 'Refactor: Rename')

          -- Execute a code action, usually your cursor needs to be on top of an error
          -- or a suggestion from your LSP for this to activate.
          map('<leader>ca', vim.lsp.buf.code_action, 'Code action', { 'n', 'x' })

          -- WARN: This is not Goto Definition, this is Goto Declaration.
          --  For example, in C this would take you to the header.
          map('<leader>gD', vim.lsp.buf.declaration, 'Goto declaration')

          -- Opens a popup that displays documentation about the word under your cursor.
          --  See `:help K` for why this keymap
          map('K', vim.lsp.buf.hover, 'Hover documentation')

          -- The following two autocommands are used to highlight references of the
          -- word under your cursor when your cursor rests there for a little while.
          --  See `:help CursorHold` for information about when this is executed
          --
          -- When you move your cursor, the highlights will be cleared (the second autocommand).
          local client = vim.lsp.get_client_by_id(event.data.client_id)
          if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_documentHighlight) then
            local highlight_augroup = vim.api.nvim_create_augroup('kickstart-lsp-highlight', { clear = false })
            vim.api.nvim_create_autocmd({ 'CursorHold', 'CursorHoldI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.document_highlight,
            })

            vim.api.nvim_create_autocmd({ 'CursorMoved', 'CursorMovedI' }, {
              buffer = event.buf,
              group = highlight_augroup,
              callback = vim.lsp.buf.clear_references,
            })

            vim.api.nvim_create_autocmd('LspDetach', {
              group = vim.api.nvim_create_augroup('kickstart-lsp-detach', { clear = true }),
              callback = function(event2)
                vim.lsp.buf.clear_references()
                vim.api.nvim_clear_autocmds({ group = 'kickstart-lsp-highlight', buffer = event2.buf })
              end,
            })
          end

          -- The following code creates a keymap to toggle inlay hints in your
          -- code, if the language server you are using supports them.
          -- This may be unwanted, since they displace some of your code
          if client and client.supports_method(vim.lsp.protocol.Methods.textDocument_inlayHint) then
            map('<leader>ih', function()
              vim.lsp.inlay_hint.enable(not vim.lsp.inlay_hint.is_enabled({ bufnr = event.buf }))
            end, 'Toggle inlay hints')
          end

          -- Add border to documentation hover window
          local borderStyle = { border = 'rounded' }
          vim.lsp.handlers['textDocument/hover'] = vim.lsp.with(vim.lsp.handlers.hover, borderStyle)
          vim.lsp.handlers['textDocument/signatureHelp'] = vim.lsp.with(vim.lsp.handlers.signature_help, borderStyle)
        end,
      })

      -- -- If you're using Ruff alongside another language server (like Pyright),
      -- -- you may want to defer to that language server for certain capabilities, like textDocument/hover:
      -- vim.api.nvim_create_autocmd("LspAttach", {
      --   group = vim.api.nvim_create_augroup('lsp_attach_disable_ruff_hover', { clear = true }),
      --   callback = function(args)
      --     local client = vim.lsp.get_client_by_id(args.data.client_id)
      --     if client == nil then
      --       return
      --     end
      --     if client.name == 'ruff' then
      --       -- Disable hover in favor of Pyright
      --       client.server_capabilities.hoverProvider = false
      --     end
      --   end,
      --   desc = 'LSP: Disable hover capability from Ruff',
      -- })

      -- LSP servers and clients are able to communicate to each other what features they support.
      --  By default, Neovim doesn't support everything that is in the LSP specification.
      --  When you add nvim-cmp, luasnip, etc. Neovim now has *more* capabilities.
      --  So, we create new capabilities with nvim cmp, and then broadcast that to the servers.
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities = vim.tbl_deep_extend('force', capabilities, require('cmp_nvim_lsp').default_capabilities())

      -- Enable the following language servers.
      --  Feel free to add/remove any LSPs that you want here. They will automatically be installed.
      --
      --  Add any additional override configuration in the following tables. Available keys are:
      --  - cmd (table): Override the default command used to start the server
      --  - filetypes (table): Override the default list of associated filetypes for the server
      --  - capabilities (table): Override fields in capabilities. Can be used to disable certain LSP features.
      --  - settings (table): Override the default settings passed when initializing the server.
      --  For example, to see the options for `lua_ls`, you could go to: https://luals.github.io/wiki/settings/
      local servers = {
        -- https://github.com/williamboman/mason-lspconfig.nvim?tab=readme-ov-file#available-lsp-servers
        -- See `:help lspconfig-all` for a list of all the pre-configured LSPs
        --
        -- Some languages (like typescript) have entire language plugins that can be useful: https://github.com/pmizio/typescript-tools.nvim
        -- But for many setups, the LSP (`ts_ls`) will work just fine
        bashls = {},
        biome = {},
        cssls = {},
        dockerls = {},
        gopls = {
          settings = {
            gopls = {
              hints = {
                assignVariableTypes = true,
                compositeLiteralFields = true,
                compositeLiteralTypes = true,
                constantValues = true,
                functionTypeParameters = true,
                parameterNames = true,
                rangeVariableTypes = true,
              },
            },
          },
        },
        helm_ls = {},
        html = { filetypes = { 'html', 'twig' } },
        lua_ls = {
          -- cmd = {...},
          -- filetypes = { ...},
          -- capabilities = {},
          settings = {
            Lua = {
              completion = {
                callSnippet = 'Replace',
              },
              diagnostics = {
                globals = { 'vim' },
                -- You can toggle below to ignore Lua_LS's noisy `missing-fields` warnings
                disable = { 'missing-fields' },
              },
              telemetry = { enable = false },
            },
          },
        },
        marksman = {},
        phpactor = {},
        ruff = {},
        sqlls = {},
        taplo = {},
        templ = {},
        terraformls = {},
        vimls = {},
        yamlls = {},
      }

      -- Ensure the servers and tools above are installed.
      --  To check the current status of installed tools and/or
      --  manually install other tools, you can run :Mason.
      --
      --  You can press `g?` for help in this menu.
      require('mason').setup({
        ui = {
          border = 'rounded',
          width = 0.8,
          height = 0.8,
        },
      })

      -- You can add other tools here that you want Mason to install
      -- for you, so that they are available from within Neovim.
      local ensure_installed = vim.tbl_keys(servers or {})
      vim.list_extend(ensure_installed, {
        -- Formatters
        'biome',
        'goimports',
        'mdformat',
        'pint',
        'ruff',
        'shfmt',
        'sqlfluff',
        'stylua',
        'taplo',
        'xmlformatter',
        'yamlfmt',

        -- Linters
        --'golangcilint',
        'phpstan',
        'revive',
        'shellcheck',
        'tflint',
        'vale',
        'yamllint',
      })
      require('mason-tool-installer').setup({ ensure_installed = ensure_installed })

      require('mason-lspconfig').setup({
        handlers = {
          function(server_name)
            local server = servers[server_name] or {}
            -- This handles overriding only values explicitly passed
            -- by the server configuration above. Useful when disabling
            -- certain features of an LSP (for example, turning off formatting for ts_ls).
            server.capabilities = vim.tbl_deep_extend('force', {}, capabilities, server.capabilities or {})
            require('lspconfig')[server_name].setup(server)
          end,
        },
      })
    end,
  },
}
