return {
  "stevearc/conform.nvim",
  dependencies = { "mason.nvim" },
  opts = function()
    local opts = {
      -- WARNING: to make sure that everything works please
      -- install all your linter with mason in the ./mason.lua config file
      formatters_by_ft = {
        lua = { "stylua" },
        sh = { "shfmt" },
        markdown = { "prettier" },
      },
    }
    return opts
  end,
}
