-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- GENERIC
map("n", "<leader>h", ":nohlsearch<CR>") -- remove search highlights
map("v", "<Leader>cp", '"+y') -- yank stuff in sys buffer
map("n", "<Leader>cp", ":%y+<CR>") -- copy all file in sys buffer
map("n", "<Leader>da", ":%d<CR>") -- delete content of file
map("n", "S", "cc") -- delete content of file

-- SCROLLING
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")

-- HARPOON
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
map("n", "<leader>a", mark.add_file)
map("n", "<C-p>", ui.toggle_quick_menu)
map("n", "<leader>1", function() ui.nav_file(1) end)
map("n", "<leader>2", function() ui.nav_file(2) end)
map("n", "<leader>3", function() ui.nav_file(3) end)
map("n", "<leader>4", function() ui.nav_file(4) end)
map("n", "<leader>5", function() ui.nav_file(5) end)
map("n", "<leader>6", function() ui.nav_file(6) end)

-- TELESCOPE (temporaneamente disintallato)
-- local builtin = require("telescope.builtin")
-- map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
-- map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
-- map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
-- map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
