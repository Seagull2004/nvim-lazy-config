-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- AUTOSAVE PER NVIM
-- nota: <leader>s come toggle
_G.autosave_enabled = true

function ToggleAutosave()
  _G.autosave_enabled = not _G.autosave_enabled
  if _G.autosave_enabled then
    vim.cmd("echo 'Autosave ON'")
  else
    vim.cmd("echo 'Autosave OFF'")
  end
end

vim.api.nvim_create_autocmd({ "InsertLeave", "TextChanged" }, {
  pattern = "*",
  callback = function()
    if _G.autosave_enabled and vim.bo.modifiable and vim.bo.readonly == false and vim.fn.expand("%") ~= "" then
      vim.cmd("silent! write")
    end
  end,
})

-- vim.api.nvim_set_keymap("n", "<leader>", ":lua ToggleAutosave()<CR>", { noremap = true, silent = true })

-- mescolare le linee selezionate
-- comando: :Random
function ShuffleLinesRange(start_line, end_line)
  local lines = vim.api.nvim_buf_get_lines(0, start_line - 1, end_line, false)
  math.randomseed(os.time())
  for i = #lines, 2, -1 do
    local j = math.random(i)
    lines[i], lines[j] = lines[j], lines[i]
  end
  vim.api.nvim_buf_set_lines(0, start_line - 1, end_line, false, lines)
end

vim.api.nvim_create_user_command("Random", function(opts)
  local start_line = opts.line1
  local end_line = opts.line2
  ShuffleLinesRange(start_line, end_line)
end, { range = true })
