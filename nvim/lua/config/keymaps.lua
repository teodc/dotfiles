-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap

-- This stays between us
map.set({ "n", "i", "v" }, "<C-c>", "<Esc>", { noremap = true })

-- File operations
map.set("n", "<C-s>", "<cmd>w<cr>", { desc = "Save file", noremap = true })
map.set({ "i", "v" }, "<C-s>", "<Esc><cmd>w<cr>", { desc = "Save file", noremap = true })
map.set("n", "<C-q>", "<cmd>q<cr>", { desc = "Close file", noremap = true })
map.set({ "i", "v" }, "<C-q>", "<Esc><cmd>q<cr>", { desc = "Close file", noremap = true })

-- Center screen when navigating search results
map.set("n", "n", "nzzzv", { noremap = true })
map.set("n", "N", "Nzzzv", { noremap = true })

-- Center screen when moving it
map.set("n", "<C-u>", "<C-u>zz", { noremap = true })
map.set("n", "<C-d>", "<C-d>zz", { noremap = true })
map.set("n", "<C-b>", "<C-b>zz", { noremap = true })
map.set("n", "<C-f>", "<C-f>zz", { noremap = true })

-- Delete without yanking to the clipboard
map.set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without yanking", noremap = true })

-- Delete line without yanking it
map.set("n", "<leader>D", [["_dd]], { desc = "Delete line without yanking it", noremap = true })

-- Yank into the system clipboard
map.set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank into system clipboard", noremap = true })
map.set("n", "<leader>Y", [["+Y]], { desc = "Yank into system clipboard", noremap = true })

-- Paste from the system clipboard
map.set("n", "<leader>p", [["+p]], { desc = "Paste from system clipboard", noremap = true })
map.set("n", "<leader>P", [["+P]], { desc = "Paste from system clipboard", noremap = true })

-- Don't loose current clipboard content when pasting
map.set("x", "<leader>p", [["_dP]], { noremap = true })

-- Don't move cursor when using J
map.set("n", "J", "mzJ`z", { noremap = true })

-- Append the above line to the current one
map.set("n", "K", "kddpkJ", { noremap = false })

-- Move line or selection up/down
map.set("n", "<C-j>", "<cmd>m .+1<cr>", { desc = "Move line down", noremap = true })
map.set("n", "<C-k>", "<cmd>m .-2<cr>", { desc = "Move line up", noremap = true })
map.set("v", "<C-j>", "<cmd>m '>+1<cr>gv", { desc = "Move selection down", noremap = true })
map.set("v", "<C-k>", "<cmd>m '<-2<cr>gv", { desc = "Move selection up", noremap = true })

-- Indent/outdent line or selection
map.set("n", "<C-h>", "<<", { desc = "Outdent line", noremap = true })
map.set("n", "<C-l>", ">>", { desc = "Indent line", noremap = true })
map.set("v", "<C-h>", "<gv", { desc = "Outdent selection", noremap = true })
map.set("v", "<C-l>", ">gv", { desc = "Indent selection", noremap = true })

-- Duplicate line or selection without yanking it
map.set("n", "<leader>o", "<cmd>co .<cr>", { desc = "Duplicate line", noremap = true })
map.set("v", "<leader>o", "<cmd>co '><cr>gv", { desc = "Duplicate selection", noremap = true })

-- Comment line or selection
-- map.set("n", "<leader>m", "gcc", { desc = "Comment line", noremap = false })
-- map.set("v", "<leader>m", "gc", { desc = "Comment selection", noremap = false })
