return {
  vim.opt.textwidth == 79,
  vim.opt.colorcolumn == "79",
  vim.cmd("highlight ColorColumn guibg=#2C2C2C blend=10"),
}
