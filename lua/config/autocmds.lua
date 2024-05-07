-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
  return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

vim.api.nvim_create_autocmd({ "VimEnter" }, {
  group = augroup("set_color_scheme_and_transparent_bg"),
  callback = function()
    vim.cmd([[colorscheme zenbones]])
    vim.cmd("highlight Normal guibg=none")
    vim.cmd("highlight NonText guibg=none")
    vim.cmd("highlight Normal ctermbg=none")
    vim.cmd("highlight NonText ctermbg=none")
  end,
})
