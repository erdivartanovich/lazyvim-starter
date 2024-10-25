-- bootstrap lazy.nvim, LazyVim and your plugins
if vim.g.vscode then
  vim.cmd("source ~/.config/nvim/lua/config/vscode.vim")
else
  require("config.lazy")
end
