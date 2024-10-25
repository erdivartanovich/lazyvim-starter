return {
  "folke/noice.nvim",
  enabled = function()
    return not vim.g.vscode
  end,
  opts = {
    cmdline = {
      view = "cmdline",
      format = {
        filter = { pattern = "^:%s*!", icon = "󰢚 :) ", lang = "bash" },
      },
    },
  },
}
