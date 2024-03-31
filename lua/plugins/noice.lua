return {
  "folke/noice.nvim",
  opts = {
    cmdline = {
      format = {
        filter = { pattern = "^:%s*!", icon = "󰢚 > ", lang = "bash" },
      },
    },
    views = {
      cmdline_popup = {
        border = {
          style = "none",
          padding = { 2, 3 },
        },
        filter_options = {},
        win_options = {
          winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
        },
      },
    },
  },
}
