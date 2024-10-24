-- https://github.com/nvimtools/none-ls.nvim
return {
  'nvimtools/none-ls.nvim',
  dependencies = {
    'nvimtools/none-ls-extras.nvim',
    'jayp0521/mason-null-ls.nvim', -- Ensure dependencies are installed
  },
  config = function()
    local null_ls = require('null-ls')
    local formatting = null_ls.builtins.formatting -- To setup formatters
    local diagnostics = null_ls.builtins.diagnostics -- To setup linters

    -- Formatters & linters for mason to install
    require('mason-null-ls').setup({
      ensure_installed = {
        'checkmake',
        'gofmt',
        'goimports',
        'jsonfmt',
        --'prettier',
        'ruff',
        'shfmt',
        'stylua',
        'yamlfmt',
      },
      automatic_installation = true,
    })

    local sources = {
      diagnostics.checkmake,
      --formatting.prettier.with { filetypes = { 'html', 'json', 'yaml', 'markdown' } },
      formatting.gofmt,
      formatting.stylua,
      formatting.shfmt.with({ args = { '-i', '4' } }),
      formatting.jsonfmt,
      formatting.yamlfmt,
      require('none-ls.formatting.ruff').with({ extra_args = { '--extend-select', 'I' } }),
      require('none-ls.formatting.ruff_format'),
    }

    local augroup = vim.api.nvim_create_augroup('LspFormatting', {})
    null_ls.setup({
      -- debug = true, -- Enable debug mode. Inspect logs with :NullLsLog.
      sources = sources,
      -- You can reuse a shared lspconfig on_attach callback here
      on_attach = function(client, bufnr)
        if client.supports_method('textDocument/formatting') then
          vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
          vim.api.nvim_create_autocmd('BufWritePre', {
            group = augroup,
            buffer = bufnr,
            callback = function()
              vim.lsp.buf.format({ async = false })
            end,
          })
        end
      end,
    })
  end,
}
