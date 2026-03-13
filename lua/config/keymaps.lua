-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- GENERIC
-- map("n", "<leader>h", ":nohlsearch<CR>") -- remove search highlights
map("v", "<Leader>cp", '"+y')      -- yank stuff in sys buffer
map("n", "<Leader>cp", ":%y+<CR>") -- copy all file in sys buffer
map("n", "<Leader>da", ":%d<CR>")  -- delete content of file
-- map("n", "<leader>sl", "<cmd>source %<CR>")
-- map("n", "<leader>lu", ":.lua<CR>")
-- map("v", "<leader>lu", ":lua<CR>")


-- SCROLLING
map("n", "<C-d>", "<C-d>zz")
map("n", "<C-u>", "<C-u>zz")
map("n", "{", "{zz")
map("n", "}", "}zz")
map("n", "n", "nzz")
map("n", "N", "Nzz")

-- WINDOW FOCUS
map("i", "<C-h>", "<Esc><C-W>h")
map("i", "<C-j>", "<Esc><C-W>j")
map("i", "<C-k>", "<Esc><C-W>k")
map("i", "<C-l>", "<Esc><C-W>l")

-- TERMINAL
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true, desc = "just use esc to go in n mode" })
map("t", "<C-k>", "<C-\\><C-n><C-W>k", { noremap = true, desc = "just use esc to go in n mode" })
map("n", "<leader>t", function()
  -- vim.cmd.vnew()
  vim.cmd("sp")
  vim.cmd.term()
  -- vim.cmd.wincmd("J")
  vim.api.nvim_win_set_height(0, 15)
  vim.cmd("startinsert")
end, { desc = "Open a little terminal", noremap = true })

map("n", "<leader>rc", function()
  if vim.bo.filetype == "python" then
    vim.cmd("sp")
    vim.cmd("term python3 '%'")
    vim.cmd("startinsert")
  end
  if vim.bo.filetype == "cs" then
    vim.cmd("sp")
    vim.cmd("term dotnet run")
    vim.cmd("startinsert")
  end
end, { desc = "run current file" })

-- map("n", "<leader>qt", ":bd!", {desc="Close current window"})

-- TELESCOPE (temporaneamente disintallato)
-- local builtin = require("telescope.builtin")
-- map("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
-- map("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
-- map("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
-- map("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })

vim.keymap.set("n", "<leader><leader>", function()
  Snacks.picker.files({
    hidden = true,  -- 🔑 include dotfolder e dotfile
    ignored = true, -- ✅ rispetta .gitignore
  })
end, { desc = "Find files (include dotfolders)" })
