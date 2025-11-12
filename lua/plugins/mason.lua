return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "ast_grep",
          "rust_analyzer",
          "clangd",
          "cssls",
          "dockerls",
          "html",
          "jdtls",
          "ltex",
          "lua_ls",
          "texlab",
          "ts_ls",
          "tailwindcss",
          "pyright",
          "emmet_ls",
          "hls"
        }
      })
    end,
  },
}

