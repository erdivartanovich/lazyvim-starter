return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    highlight = { enable = true },
    indent = { enable = true },
    ensure_installed = { "lua", "xml", "http", "json", "graphql" },
  },
}
