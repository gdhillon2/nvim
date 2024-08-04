vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set softtabstop=4")
vim.cmd("set expandtab")
vim.cmd("set number")
vim.cmd("set relativenumber")

-- keybind for esc to get me out of terminal mode
vim.api.nvim_set_keymap("t", "<ESC>", "<C-\\><C-n>", { noremap = true })

-- Key mapping to copy diagnostics message to clipboard
vim.api.nvim_set_keymap(
	"n",
	"<leader>dc",
	"<cmd>lua CopyDiagnosticsMessage()<CR>",
	{ noremap = true, silent = true, desc = "Copy diagnostics message to clipboard" }
)

-- this function opens error message and copies its contents
function CopyDiagnosticsMessage()
	vim.diagnostic.open_float({ focusable = true })
	vim.diagnostic.open_float({ focusable = true })
	vim.api.nvim_command("normal! jVGyq")
end

-- key mapping to open the diagnostics float
vim.api.nvim_set_keymap(
	"n",
	"<leader>dd",
	"<cmd>lua vim.diagnostic.open_float({ focusable = true })<CR>",
	{ noremap = true, silent = true, desc = "Toggles local troubleshoot" }
)

-- key mapping to copy diagnostics message to clipboard
vim.api.nvim_set_keymap(
	"n",
	"<leader>dc",
	"<cmd>lua CopyDiagnosticsMessage()<CR>",
	{ noremap = true, silent = true, desc = "Copy diagnostics message to clipboard" }
)

vim.opt.clipboard:append("unnamedplus")

vim.api.nvim_exec(
	[[
  augroup ejs_ft
    autocmd!
    autocmd BufRead,BufNewFile *.ejs set filetype=html
  augroup END
]],
	false
)

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

-- navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
