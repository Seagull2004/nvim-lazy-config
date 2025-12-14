-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- GENERIC
map("n", "<leader>h", ":nohlsearch<CR>") -- remove search highlights
map("v", "<Leader>cp", '"+y')            -- yank stuff in sys buffer
map("n", "<Leader>cp", ":%y+<CR>")       -- copy all file in sys buffer
map("n", "<Leader>da", ":%d<CR>")        -- delete content of file
map("n", "<leader><leader>x", "<cmd>source %<CR>")
map("n", "<leader>x", ":.lua<CR>")
map("v", "<leader>x", ":lua<CR>")


-- SCROLLING
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "{", "{zz")
map("n", "}", "}zz")


-- TELESCOPE (temporaneamente disintallato)
-- local builtin = require("telescope.builtin")
-- map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
-- map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
-- map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
-- map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
