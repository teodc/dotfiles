-- https://github.com/stevearc/conform.nvim
return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>cf',
      function()
        require('conform').format({ async = true, lsp_format = 'fallback' })
      end,
      mode = '',
      desc = '[C]ode [F]ormat',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = function(bufnr)
      -- Disable "format_on_save lsp_fallback" for languages that don't
      -- have a well standardized coding style. You can add additional
      -- languages here or re-enable it for the disabled ones.
      local disable_filetypes = { c = true, cpp = true }
      local lsp_format_opt
      if disable_filetypes[vim.bo[bufnr].filetype] then
        lsp_format_opt = 'never'
      else
        lsp_format_opt = 'fallback'
      end
      return {
        timeout_ms = 500,
        lsp_format = lsp_format_opt,
      }
    end,
    -- https://github.com/stevearc/conform.nvim?tab=readme-ov-file#formatters
    formatters_by_ft = {
      bash = { 'shfmt' },
      css = { 'biome' },
      go = { 'goimports', 'gofmt', stop_after_first = true },
      --graphql = { 'biome' },
      html = { 'biome' },
      javascript = { 'biome' },
      json = { 'biome' },
      lua = { 'stylua' },
      markdown = { 'mdformat' },
      php = { 'pint' },
      python = { 'ruff_organize_imports', 'ruff_fix', 'ruff_format' },
      --ruby = { 'rubocop' },
      --rust = { 'rustfmt' },
      --scala = { 'scala' },
      sql = { 'sqlfluff' },
      --templ = { '' },
      --terraform = { 'terraform_fmt' },
      toml = { 'taplo' },
      typescript = { 'biome' },
      xml = { 'xmlformatter' },
      yaml = { 'yamlfmt' },
    },
  },
}
