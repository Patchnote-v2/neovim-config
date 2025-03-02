-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Leader gets set in options instead of remap since remap is loaded last; some plugins need leader set
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Clipboard
vim.schedule(function()
    vim.opt.clipboard = "unnamedplus"
end)

-- When word wrapping, indent wrapped line
vim.opt.breakindent = true

-- Turn on saving undo history to a file
vim.opt.undofile = true

-- Improve search by ignoring case, adaptive ignorecase, and realtime search highlighting
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true

-- Write to swap file sooner after inactivity (miliseconds)
vim.updatetime = 500

-- Better splitting placement
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = "split"

vim.opt.cursorline = true

vim.api.nvim_create_autocmd("TextYankPost", {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

--vim.api.nvim_create_autocmd("FileType", {
--  desc = "Autoformat JSON using JQ",
--  callback = function(opts)
--    if vim.bo[opts.buf].filetype == "json" then
--      vim.local
--  command = "set formatprg=jq"
--})

-- Where kickstart ends and I being
vim.opt.wrap = false

vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.opt.scrolloff = 15
vim.opt.signcolumn = "yes"

vim.opt.virtualedit = "block"

vim.opt.termguicolors = true

vim.opt.colorcolumn = "120"

