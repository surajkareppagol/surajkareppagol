vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.syntax = "on"

vim.cmd[[colorscheme tokyonight-night]]

-- Format files after save
local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd
augroup("__formatter__", { clear = true })
autocmd("BufWritePost", {
	group = "__formatter__",
	command = ":FormatWrite",
})
