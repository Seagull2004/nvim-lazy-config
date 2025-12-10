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
        auto_install = true,
        ensure_installed = {
          "pyright",
          "hls"
          -- "ast_grep",
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
        }
      })
    end,
  },
}

