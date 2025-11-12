return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- configure lazyvim to load gruvox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
