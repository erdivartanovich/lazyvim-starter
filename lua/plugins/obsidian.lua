return {
  "epwalsh/obsidian.nvim",
  enabled = true,
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  ft = "markdown",
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    {
      "nvim-treesitter/nvim-treesitter",
      opts = {
        ensure_installed = {
          "markdown",
          "markdown_inline",
        },
        highlight = {
          enabled = true,
        },
      },
    },
  },
  opts = {
    workspaces = {
      {
        name = "vaults",
        path = "/home/rdi/Cabin/vaults/",
      },
    },

    -- see below for full list of options 👇
  },
}
