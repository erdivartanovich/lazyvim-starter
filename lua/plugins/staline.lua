return {
  "tamton-aquib/staline.nvim",
  opts = function()
    local pywal_core = require("pywal.core")
    local colors = pywal_core.get_colors()
    return {
      sections = {
        left = { "  ", "mode", " ", "branch", " ", "lsp" },
        mid = {},
        right = { "file_name", "line_column" },
      },
      mode_icons = {
        ["n"] = "󰢚 ",
        ["no"] = "󰢚 ",
        ["niI"] = "󰢚 ",
        ["niR"] = "󰢚 ",
        ["no␖"] = "󰢚 ",
        ["niV"] = "󰢚 ",
        ["nov"] = "󰢚 ",
        ["noV"] = "󰢚 ",
      },
      mode_colors = {
        i = colors.color2,
        n = colors.color5,
        c = colors.color6,
        v = colors.color4,
        V = colors.color4,
      },
      defaults = {
        true_colors = true,
        line_column = " [%l/%L] :%c  ",
        branch_symbol = " ",
      },
    }
  end,
}
