-- Prevent LSP from overwriting treesitter color settings (https://github.com/NvChad/NvChad/issues/1907)
vim.highlight.priorities.semantic_tokens = 95 -- Or any number lower than 100, treesitter's priority level

-- Customize appearance of diagnostics
vim.diagnostic.config({
  underline = true,
  update_in_insert = false,
  virtual_text = {
    prefix = '󰚑',
    format = function(diagnostic)
      local code = diagnostic.code or '?'
      return string.format('[%s]', code) -- or ('%s %s', code, diagnostic.message)
    end,
    source = 'if_many',
  },
  float = {
    border = 'rounded',
    source = 'if_many',
  },
  on_ready = function()
    vim.cmd('highlight DiagnosticVirtualText guibg=NONE')
  end,
})
