-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.wrap = true
vim.opt.lazyredraw = false

vim.g.snacks_animate = false
vim.g.lazyvim_eslint_auto_format = false
vim.g.minipairs_disable = true

vim.opt.guicursor = "n-v-c:block,i-ci-ve-t:ver25,r-cr:hor20"

vim.opt.clipboard = ""

vim.cmd("set spelllang=en_us,it_IT")

  -- Map mouse wheel to scroll one line at a time
vim.api.nvim_set_keymap('n', '<ScrollWheelUp>', '<C-y>', { silent = true })
vim.api.nvim_set_keymap('n', '<ScrollWheelDown>', '<C-e>', { silent = true })
vim.api.nvim_set_keymap('i', '<ScrollWheelUp>', '<C-o><C-y>', { silent = true })
vim.api.nvim_set_keymap('i', '<ScrollWheelDown>', '<C-o><C-e>', { silent = true })
vim.api.nvim_set_keymap('v', '<ScrollWheelUp>', '<C-y>', { silent = true })
vim.api.nvim_set_keymap('v', '<ScrollWheelDown>', '<C-e>', { silent = true })
