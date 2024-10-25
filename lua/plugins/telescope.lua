return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<C-p>", "<cmd>Telescope git_files<cr>", desc = "Find Files", mode = { "n" } },
    { "<leader>.", "<cmd>Telescope find_files<cr>", desc = "Find Files", mode = { "n" } },
  },
  opts = function()
    local actions = require("telescope.actions")
    return {
      defaults = {
        mappings = {
          i = {
            ["<esc>"] = actions.close,
            ["<C-u>"] = false,
            ["<C-d>"] = false,
          },
        },
      },
    }
  end,
}
