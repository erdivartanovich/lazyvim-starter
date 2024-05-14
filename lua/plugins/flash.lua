return {
  "folke/flash.nvim",
  keys = {
    -- "disable the keymap" to grep files
    { "S", false },
    -- change a keymap
    {
      "<leader>F",
      mode = { "n", "x", "o" },
      function()
        require("flash").treesitter()
      end,
      desc = "Flash Treesitter",
    },
  },
}
