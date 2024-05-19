-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- can press escape in terminal mode to exit
vim.api.nvim_set_keymap("t", "<ESC>", "<C-\\><C-n>", { noremap = true })

-- closes a tab with c-C
vim.keymap.set("n", "<c-C>", "<Cmd>bd<CR>")

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
