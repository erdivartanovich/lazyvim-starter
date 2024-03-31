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
        name = "vlfberht",
        path = "/home/rdi/Cabin/vaults/vlfberht/",
      },
      {
        name = "projects",
        path = "/home/rdi/Cabin/vaults/projects",
      },
    },

    -- see below for full list of options 👇
  },
}
