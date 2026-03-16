return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    -- configure the installation of lsp's
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        auto_install = true,
        ensure_installed = {
          "pyright",
          "hls",
          "cssls",
          "ast_grep",
          "ts_ls",
          -- "rust_analyzer",
          -- "clangd",
          -- "cssls",
          -- "dockerls",
          -- "html",
          -- "jdtls",
          -- "ltex",
          -- "texlab",
          -- "ts_ls",
          -- "tailwindcss",
          -- "emmet_ls",
        },
      })
    end,
  },
  {
    -- configure the installation of formatter
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    config = function()
      local mason_tool_installer = require("mason-tool-installer")

      mason_tool_installer.setup({
        -- WARNING:
        -- make sure that all the linter that you install here
        -- are also present in the ./conform.lua file
        ensure_installed = {
          "stylua",
          "shfmt",
          "ast-grep",
          "prettier",
        },
      })
    end,
  },
}
