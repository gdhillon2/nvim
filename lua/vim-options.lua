vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set softtabstop=2")
vim.cmd("set number")
vim.cmd("set relativenumber")

vim.api.nvim_set_keymap("t", "<ESC>", "<C-\\><C-n>", { noremap = true })

vim.opt.clipboard:append("unnamedplus")

-- shows spaces as dots
vim.cmd("set list")
--vim.cmd("set lcs+=space:·")
vim.opt.listchars = {
	space = "⋅",
	tab = "⋅⋅",
	nbsp = "␣",
	trail = "•",
	extends = "⟩",
	precedes = "⟨",
}

vim.cmd([[
augroup MyHighlighting
  autocmd!
  autocmd ColorScheme * highlight NonText ctermfg=grey guifg=grey30
  autocmd ColorScheme * highlight SpecialKey ctermfg=grey guifg=grey30
augroup END
]])

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
