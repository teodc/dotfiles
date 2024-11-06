-- https://github.com/nvim-telescope/telescope.nvim
return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope-ui-select.nvim',
    {
      'nvim-telescope/telescope-fzf-native.nvim',
      -- Only load if `make` is available
      build = 'make',
      cond = function()
        return vim.fn.executable('make') == 1
      end,
    },
    {
      'nvim-tree/nvim-web-devicons',
      enabled = vim.g.have_nerd_font,
    },
  },
  config = function()
    local actions = require('telescope.actions')

    require('telescope').setup({
      defaults = {
        sorting_strategy = 'ascending',
        layout_strategy = 'horizontal',
        results_title = false,
        preview_title = false,
        layout_config = {
          vertical = {
            width = 0.8,
            height = 0.8,
            preview_height = 0.5,
          },
          horizontal = {
            width = 0.9,
            height = 0.9,
            preview_width = 0.6,
          },
          --prompt_position = 'bottom',
        },
        file_ignore_patterns = {
          '^./.git/',
          '^./.venv/',
          '^node_modules/',
          '^vendor/',
        },
        mappings = {
          n = {
            ['q'] = actions.close,
          },
        },
      },
      -- path_display = {
      --   filename_first = {
      --     reverse_directories = true,
      --   },
      -- },
      pickers = {
        buffers = { theme = 'dropdown', previewer = false, preview_title = false },
        current_buffer_fuzzy_find = { layout_strategy = 'vertical', previewer = false, preview_title = false },
        diagnostics = { preview_title = false },
        find_files = { theme = 'dropdown', previewer = false, preview_title = false, hidden = true },
        grep_string = { preview_title = false },
        help_tags = { preview_title = false },
        keymaps = { preview_title = false },
        live_grep = { preview_title = false },
        marks = { preview_title = false },
        oldfiles = { preview_title = false, hidden = true },
        resume = { preview_title = false },
      },
    })

    -- Enable extensions if they are installed
    pcall(require('telescope').load_extension, 'fzf')
    pcall(require('telescope').load_extension, 'ui-select')

    -- See `:help telescope.builtin`
    local builtin = require('telescope.builtin')

    -- stylua: ignore start
    vim.keymap.set('n', '<leader>/', function() builtin.current_buffer_fuzzy_find({ prompt_title = 'Fuzzily search current buffer' }) end, { desc = 'Fuzzily search current buffer' })
    vim.keymap.set('n', '<leader><leader>', function() builtin.live_grep({ prompt_title = 'Grep in CWD' }) end, { desc = 'Grep in CWD' })
    vim.keymap.set('n', '<leader>s.', function() builtin.resume({ prompt_title = 'Resume last search' }) end, { desc = 'Resume last search ("." like repeat)' })
    vim.keymap.set('n', '<leader>s/', function() builtin.live_grep({ grep_open_files = true, prompt_title = 'Live grep open files' }) end, { desc = 'Search open files ("/" like search)' })
    vim.keymap.set('n', '<leader><Tab>', function() builtin.buffers({ sort_lastused = true, sort_mru = true, prompt_title = 'List open buffers' }) end, { desc = 'List open buffers' })
    vim.keymap.set('n', '<leader>sq', function() builtin.diagnostics({ prompt_title = 'Search diagnostics' }) end, { desc = 'Search diagnostics' })
    vim.keymap.set('n', '<leader>sf', function() builtin.find_files({ prompt_title = 'Search project files' }) end, { desc = 'Search files' })
    vim.keymap.set('n', '<leader>sh', function() builtin.help_tags({ prompt_title = 'Search help' }) end, { desc = 'Search help' })
    vim.keymap.set('n', '<leader>sk', function() builtin.keymaps({ prompt_title = 'Search keymaps' }) end, { desc = 'Search keymaps' })
    vim.keymap.set('n', '<leader>sm', function() builtin.marks({ prompt_title = 'Search marks' }) end, { desc = 'Search marks' })
    vim.keymap.set('n', '<leader>sn', function() builtin.find_files({ cwd = vim.fn.stdpath('config'), prompt_title = 'Search Neovim files' }) end, { desc = 'Search Neovim files' })
    vim.keymap.set('n', '<leader>sr', function() builtin.oldfiles({ prompt_title = 'Search recent files' }) end, { desc = 'Search recent files' })
    vim.keymap.set('n', '<leader>sw', function() builtin.grep_string({ prompt_title = 'Search current word' }) end, { desc = 'Search current word' })
    --vim.keymap.set('n', '<leader>sgb', builtin.git_branches, { desc = 'Search git branches' })
    --vim.keymap.set('n', '<leader>sgc', builtin.git_commits, { desc = 'Search git commits' })
    --vim.keymap.set('n', '<leader>sgcf', builtin.git_bcommits, { desc = 'Search git commits for current buffer' })
    --vim.keymap.set('n', '<leader>sgf', builtin.git_files, { desc = 'Search git files' })
    --vim.keymap.set('n', '<leader>sgs', builtin.git_status, { desc = 'Search git status (diff view)' })
    -- stylua: ignore end
  end,
}
