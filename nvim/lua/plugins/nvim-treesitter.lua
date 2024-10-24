-- https://github.com/nvim-treesitter/nvim-treesitter
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects', -- https://github.com/nvim-treesitter/nvim-treesitter-textobjects
    'RRethy/nvim-treesitter-textsubjects', -- https://github.com/RRethy/nvim-treesitter-textsubjects
  },
  main = 'nvim-treesitter.configs', -- Sets main module to use for opts
  opts = {
    -- A list of parser names, 'maintained' or 'all'
    -- See: https://github.com/nvim-treesitter/nvim-treesitter?tab=readme-ov-file#supported-languages
    ensure_installed = {
      'bash',
      -- 'c',
      'css',
      'csv',
      'diff',
      'dockerfile',
      'editorconfig',
      -- 'eex',
      -- 'elixir',
      -- 'erlang',
      'git_config',
      'git_rebase',
      'gitattributes',
      'gitcommit',
      'gitignore',
      'go',
      'gomod',
      'gosum',
      'gotmpl',
      'gowork',
      --'graphql',
      --'haskell',
      --'heex',
      'helm',
      'html',
      'http',
      --'java',
      'javascript',
      --'jq',
      'jsdoc',
      'json',
      'jsonc',
      'lua',
      'luadoc',
      'make',
      'markdown',
      'markdown_inline',
      'php',
      'php_only',
      'phpdoc',
      'printf',
      'proto',
      'python',
      'regex',
      --'ruby',
      --'rust',
      --'scala',
      'sql',
      'templ',
      --'terraform',
      'toml',
      'tsx',
      'twig',
      'typescript',
      'vim',
      'vimdoc',
      'xml',
      'yaml',
    },
    sync_install = false, -- Install parsers synchronously (only applied to `ensure_installed`)
    auto_install = true, -- Automatically install missing parsers when entering buffer
    -- ignore_install = { 'javascript' }, -- List of parsers to ignore installing, or 'all'
    highlight = {
      enable = true,
      -- disable = { 'c', 'rust' }, -- List of language that will be disabled
      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      -- If you are experiencing weird indenting issues, add the language to
      -- the list of additional_vim_regex_highlighting and disabled languages for indent.
      -- additional_vim_regex_highlighting = { 'ruby' },
    },
    indent = {
      enable = true,
      -- disable = { 'ruby' },
    },
    textobjects = {
      select = {
        enable = true,
        lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
        keymaps = {
          ['aa'] = { query = '@parameter.outer', desc = 'Select outer part of parameter' },
          ['ia'] = { query = '@parameter.inner', desc = 'Select inner part of parameter' },
          ['af'] = { query = '@function.outer', desc = 'Select outer part of function' },
          ['if'] = { query = '@function.inner', desc = 'Select inner part of function' },
          ['ac'] = { query = '@class.outer', desc = 'Select outer part of class' },
          ['ic'] = { query = '@class.inner', desc = 'Select inner part of class' },
          ['as'] = { query = '@scope', desc = 'Select language scope' },
        },
        selection_modes = {
          ['@parameter.outer'] = 'v', -- charwise
          ['@parameter.inner'] = 'v', -- charwise
          ['@function.outer'] = 'V', -- linewise
          ['@function.inner'] = 'V', -- linewise
          ['@class.outer'] = 'V', -- linewise
          ['@class.inner'] = 'V', -- linewise
        },
        -- Extend textobjects to include preceding or succeeding whitespace.
        -- Succeeding whitespace has priority in order to act similarly to eg the built-in `ap`.
        include_surrounding_whitespace = false,
      },
      move = {
        enable = true,
        set_jumps = true, -- Whether to set jumps in the jumplist
        goto_next_start = {
          [']a'] = { query = '@parameter.outer', desc = 'Next parameter start' },
          [']f'] = { query = '@function.outer', desc = 'Next function start' },
          [']c'] = { query = '@class.outer', desc = 'Next class start' },
          [']s'] = { query = '@scope', desc = 'Next scope start' },
        },
        goto_next_end = {
          [']A'] = { query = '@parameter.outer', desc = 'Next parameter end' },
          [']F'] = { query = '@function.outer', desc = 'Next function end' },
          [']C'] = { query = '@class.outer', desc = 'Next class end' },
          [']s'] = { query = '@scope', desc = 'Next scope end' },
        },
        goto_previous_start = {
          ['[a'] = { query = '@parameter.outer', desc = 'Previous parameter start' },
          ['[f'] = { query = '@function.outer', desc = 'Previous function start' },
          ['[c'] = { query = '@class.outer', desc = 'Previous class start' },
          ['[s'] = { query = '@scope', desc = 'Previous scope start' },
        },
        goto_previous_end = {
          ['[A'] = { query = '@parameter.outer', desc = 'Previous parameter end' },
          ['[F'] = { query = '@function.outer', desc = 'Previous function end' },
          ['[C'] = { query = '@class.outer', desc = 'Previous class end' },
          [']S'] = { query = '@scope', desc = 'Previous scope end' },
        },
      },
      swap = {
        enable = false,
        -- swap_next = {
        --   ['<leader>a'] = { query = '@parameter.inner', desc = 'Swap with next parameter' },
        -- },
        -- swap_previous = {
        --   ['<leader>A'] = { query = '@parameter.inner', desc = 'Swap with previous parameter' },
        -- },
      },
    },
    textsubjects = {
      enable = true,
      prev_selection = ',', -- (Optional) keymap to select the previous selection
      keymaps = {
        ['.'] = { 'textsubjects-smart', desc = 'Smart select (repeat to expand)' },
        [';'] = { 'textsubjects-container-outer', desc = 'Select container outer (class, function, etc.)' },
        ['i;'] = { 'textsubjects-container-inner', desc = 'Select container inner (classes, functions, etc.)' },
      },
    },
  },
}
