-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

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
