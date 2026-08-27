-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- Move Lines: rebind off <A-j>/<A-k> since AeroSpace grabs Option+j/k globally for focus movement.
-- <A-S-j>/<A-S-k> (Option+Shift+J/K) is free in AeroSpace and sends a plain capital letter,
-- so it works in any terminal without needing extended keyboard-protocol support.
local map = vim.keymap.set
map("n", "<A-j>", "<nop>")
map("n", "<A-k>", "<nop>")
map("i", "<A-j>", "<nop>")
map("i", "<A-k>", "<nop>")
map("v", "<A-j>", "<nop>")
map("v", "<A-k>", "<nop>")

map("n", "<A-J>", "<cmd>execute 'move .+' . v:count1<cr>==", { desc = "Move Down" })
map("n", "<A-K>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==", { desc = "Move Up" })
map("i", "<A-J>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
map("i", "<A-K>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
map("v", "<A-J>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv", { desc = "Move Down" })
map("v", "<A-K>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv", { desc = "Move Up" })
