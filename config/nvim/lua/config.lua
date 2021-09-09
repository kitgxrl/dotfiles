-- Appearance
vim.o.number = true
vim.o.relativenumber = true
vim.w.wrap = false
vim.o.termguicolors = true
vim.g.tokyonight_style = "night"
vim.o.showmode = false
vim.cmd[[colorscheme nord]]

-- Tab/spaces
vim.o.autoindent = true
vim.o.expandtab = true
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.tabstop = 2
vim.o.smartindent = true
vim.o.modeline = false

-- Disable line numbers in terminal buffers
vim.cmd[[
    au TermOpen * setlocal nonumber norelativenumber
]]

-- Split Direction
vim.o.splitright = true
vim.o.splitbelow = true
