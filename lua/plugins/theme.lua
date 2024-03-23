return {
  -- add pywal theme
  {
    "erdivartanovich/pywal.nvim",
    name = "pywal",
  },

  -- Configure LazyVim to load pywal
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "pywal",
    },
  },
}
