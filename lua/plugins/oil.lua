return {
  "stevearc/oil.nvim",
  lazy = false,
  keys = {
    {
      "-",
      function()
        require("oil").toggle_float()
      end,
      desc = "NeoTree",
    },
  },
  opts = function()
    vim.cmd([[cabbrev Ex Oil]])
    vim.cmd([[cabbrev Explore Oil]])
    return {
      default_file_explorer = true,
    }
  end,
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
