return {
  "stevearc/oil.nvim",
  lazy = false,
  keys = {
    {
      "-",
      function()
        require("oil").toggle_float()
      end,
      desc = "File Explorer",
    },
    {
      "<leader>e",
      function()
        require("oil").toggle_float()
      end,
      desc = "File Explorer",
    },
  },
  opts = function()
    vim.cmd([[cabbrev Ex Oil]])
    vim.cmd([[cabbrev Explore Oil]])
    return {
      default_file_explorer = true,
      keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<C-\\>"] = "actions.select_split",
        ["<C-enter>"] = "actions.select_vsplit",
        ["<C-t>"] = "actions.select_tab",
        ["<C-p>"] = "actions.preview",
        ["q"] = "actions.close",
        ["<C-l>"] = "actions.refresh",
        ["-"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = "actions.tcd",
        ["gs"] = "actions.change_sort",
        ["gx"] = "actions.open_external",
        ["g."] = "actions.toggle_hidden",
        ["g\\"] = "actions.toggle_trash",
      },
      float = {
        -- Padding around the floating window
        padding = 0,
        max_width = 0,
        max_height = 0,
        border = "rounded",
        win_options = {
          winblend = 0,
        },
        -- This is the config that will be passed to nvim_open_win.
        -- Change values here to customize the layout
        override = function(conf)
          return conf
        end,
      },
      -- Configuration for the floating keymaps help window
      keymaps_help = {
        border = "rounded",
      },
      view_options = {
        show_hidden = true,
      },
    }
  end,
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
