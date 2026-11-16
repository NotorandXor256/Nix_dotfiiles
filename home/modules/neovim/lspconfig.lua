require("nvchad.configs.lspconfig").defaults()

vim.lsp.enable({
  "clangd",
})
-- Custom vim options
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.wo.relativenumber = true

-- Custom keymaps
