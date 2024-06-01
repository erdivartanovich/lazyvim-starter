return {
  "neovim/nvim-lspconfig",
  event = { "BufEnter" },
  ---@class PluginLspOpts
  opts = {
    ---@type lspconfig.options
    servers = {
      denols = {},
    },
  },
}
