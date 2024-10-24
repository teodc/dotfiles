-- Set leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local function merge(table, addons)
  for k, v in pairs(addons) do
    table[k] = v
  end
  return table
end

local opts = { noremap = true, silent = true }

-- Disable the spacebar key's default behavior in Normal and Visual modes
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', opts)

-- Clear highlights on search when pressing <Esc> in normal mode
vim.keymap.set('n', '<Esc>', ':nohlsearch <CR>', opts)

-- This stays between us
vim.keymap.set({ 'n', 'v', 'i' }, '<C-c>', '<Esc>')

-- Save & quit file
vim.keymap.set('n', '<C-s>', ':w <CR>', merge(opts, { desc = 'Save file' }))
vim.keymap.set('n', '<C-q>', ':q <CR>', merge(opts, { desc = 'Quit file' }))

-- Handy up/down/left/right moving
vim.keymap.set({ 'n', 'v' }, 'H', '_', merge(opts, { desc = 'Move to first character of the line' }))
vim.keymap.set({ 'n', 'v' }, 'J', '}', merge(opts, { desc = 'Jump to next paragraph' }))
vim.keymap.set({ 'n', 'v' }, 'K', '{', merge(opts, { desc = 'Jump to previous paragraph' }))
vim.keymap.set({ 'n', 'v' }, 'L', 'g_', merge(opts, { desc = 'Move to last character of the line' }))

-- Center screen while scrolling
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)
vim.keymap.set('n', '<C-b>', '<C-b>zz', opts)
vim.keymap.set('n', '<C-f>', '<C-f>zz', opts)

-- Center screen while jumping to search matches
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- Easily move line or visual block up/down
vim.keymap.set('n', '<C-k>', ':mo .-2 <CR> ==', merge(opts, { desc = 'Move current line up' }))
vim.keymap.set('v', '<C-k>', [[:mo '<-2 <CR> gv]], merge(opts, { desc = 'Move current selection up' }))
vim.keymap.set('n', '<C-j>', ':mo .+1 <CR> ==', merge(opts, { desc = 'Move current line down' }))
vim.keymap.set('v', '<C-j>', [[:mo '>+1 <CR> gv]], merge(opts, { desc = 'Move current selection down' }))

-- Easily indent line or visual block
vim.keymap.set('n', '<C-h>', '<<', merge(opts, { desc = 'Indent line' }))
vim.keymap.set('v', '<C-h>', '<gv', merge(opts, { desc = 'Indent selection' }))
vim.keymap.set('n', '<C-l>', '>>', merge(opts, { desc = 'Outdent line' }))
vim.keymap.set('v', '<C-l>', '>gv', merge(opts, { desc = 'Outdent selection' }))

-- Keep selection when indenting
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Delete single character without yanking
vim.keymap.set({ 'n', 'v' }, 'x', '"_x', opts)

-- Delete without yanking
vim.keymap.set({ 'n', 'v' }, '<leader>d', '"_d', merge(opts, { desc = 'Delete without yanking' }))

-- C without replacing clipboard selection
vim.keymap.set({ 'n', 'v' }, 'c', '"_c', opts)
vim.keymap.set({ 'n', 'v' }, 'C', '"_C', opts)

-- -- Yank into the system clipboard
-- vim.keymap.set({'n', 'v'}, '<leader>y', '"+y', merge(opts, { desc = 'Yank into the system clipboard' }))
-- vim.keymap.set('n', '<leader>Y', '"+Y', merge(opts, { desc = 'Yank rest of the line into the system clipboard' }))

-- -- Paste from the system clipboard
-- vim.keymap.set('n', '<leader>p', '"+p', merge(opts, { desc = 'Paste from the system clipboard' }))
-- vim.keymap.set('n', '<leader>P', '"+P', merge(opts, { desc = 'Paste from the system clipboard' }))

-- Paste without replacing clipboard selection
vim.keymap.set('v', 'p', '"_dP', opts)

-- Merge line bellow with the current one without moving the cursor
vim.keymap.set('n', '<leader>u', 'mzJ`z', merge(opts, { desc = 'Merge line bellow with current one' }))

-- Duplicate line or visual block without yanking it
vim.keymap.set('n', '<leader>o', ':co . <CR>', merge(opts, { desc = 'Duplicate line' }))
vim.keymap.set('v', '<leader>o', [[:co '> <CR> gv]], merge(opts, { desc = 'Duplicate selection' }))

-- -- Comment line or visual block
-- vim.keymap.set('n', '<leader>m', ':norm gcc <CR>', merge(opts, { desc = 'Comment line' }))
-- vim.keymap.set('v', '<leader>m', ':norm gvgc <CR>', merge(opts, { desc = 'Comment selection' }))

-- Windows
vim.keymap.set('n', '<leader>wv', ':vnew <CR>', merge(opts, { desc = 'Split window vertically' }))
vim.keymap.set('n', '<leader>wh', ':new <CR>', merge(opts, { desc = 'Split window horizontally' }))
vim.keymap.set('n', '<leader>we', '<C-w>=', merge(opts, { desc = 'Make split windows equal size' }))
vim.keymap.set('n', '<leader>wx', ':close <CR>', merge(opts, { desc = 'Close current split window' }))
-- Navigate between splits
vim.keymap.set('n', '<leader>h', ':wincmd h <CR>', merge(opts, { desc = 'Move to left split' }))
vim.keymap.set('n', '<leader>j', ':wincmd j <CR>', merge(opts, { desc = 'Move to bottom split' }))
vim.keymap.set('n', '<leader>k', ':wincmd k <CR>', merge(opts, { desc = 'Move to upper split' }))
vim.keymap.set('n', '<leader>l', ':wincmd l <CR>', merge(opts, { desc = 'Move to right split' }))
-- -- Resize window with arrows
-- vim.keymap.set('n', '<Up>', ':resize -2 <CR>', merge(opts, { desc = '' }))
-- vim.keymap.set('n', '<Down>', ':resize +2 <CR>', merge(opts, { desc = '' }))
-- vim.keymap.set('n', '<Left>', ':vertical resize -2 <CR>', merge(opts, { desc = '' }))
-- vim.keymap.set('n', '<Right>', ':vertical resize +2 <CR>', merge(opts, { desc = '' }))

-- Buffers
vim.keymap.set('n', '<leader>bo', ':enew <CR>', merge(opts, { desc = 'Open new buffer' }))
vim.keymap.set('n', '<leader>bx', ':Bdelete! <CR>', merge(opts, { desc = 'Close current buffer' }))
vim.keymap.set('n', '<leader>bw', ':bufdo :Bdelete! <CR>', merge(opts, { desc = 'Close all open buffers' }))
vim.keymap.set('n', '<leader>bl', ':buffers <CR> :buffer<Space>', { noremap = true, desc = 'List buffers' })
vim.keymap.set('n', '<Tab>', ':bnext <CR>', merge(opts, { desc = 'Go to next buffer' }))
vim.keymap.set('n', '<S-Tab>', ':bprevious <CR>', merge(opts, { desc = 'Go to previous buffer' }))

-- Tabs
vim.keymap.set('n', '<leader>to', ':tabnew <CR>', merge(opts, { desc = 'Open new tab' }))
vim.keymap.set('n', '<leader>tx', ':tabclose <CR>', merge(opts, { desc = 'Close current tab' }))
vim.keymap.set('n', '<leader>tn', ':tabn <CR>', merge(opts, { desc = 'Go to next tab' }))
vim.keymap.set('n', '<leader>tp', ':tabp <CR>', merge(opts, { desc = 'Go to previous tab' }))
vim.keymap.set('n', '<leader>tw', ':tabo <CR>', merge(opts, { desc = 'Close all tabs except current one' }))

-- Diagnostics (quickfixes)
vim.keymap.set('n', '<leader>ql', vim.diagnostic.setloclist, merge(opts, { desc = 'Open quickfixes list' }))
vim.keymap.set('n', '<leader>qs', vim.diagnostic.open_float, merge(opts, { desc = 'Show diagnostic' }))
vim.keymap.set('n', '[q', vim.diagnostic.goto_prev, merge(opts, { desc = 'Go to previous diagnostic' }))
vim.keymap.set('n', ']q', vim.diagnostic.goto_next, merge(opts, { desc = 'Go to next diagnostic' }))

-- Toggle diagnostics
local diagnostics_active = true
vim.keymap.set('n', '<leader>qt', function()
  diagnostics_active = not diagnostics_active
  if diagnostics_active then
    vim.diagnostic.enable(true)
  else
    vim.diagnostic.enable(false)
  end
end, merge(opts, { desc = 'Toggle diagnostics' }))
