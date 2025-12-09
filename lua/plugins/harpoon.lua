
return {
  "ThePrimeagen/harpoon",
  enabled = true,
  keys = {
    { "<leader>a", function() require("harpoon.mark").add_file() end, desc = "Harpoon Add File" },
    { "<C-p>", function() require("harpoon.ui").toggle_quick_menu() end, desc = "Harpoon Menu" },

    { "<leader>1", function() require("harpoon.ui").nav_file(1) end },
    { "<leader>2", function() require("harpoon.ui").nav_file(2) end },
    { "<leader>3", function() require("harpoon.ui").nav_file(3) end },
    { "<leader>4", function() require("harpoon.ui").nav_file(4) end },
    { "<leader>5", function() require("harpoon.ui").nav_file(5) end },
    { "<leader>6", function() require("harpoon.ui").nav_file(6) end },
  },
}

