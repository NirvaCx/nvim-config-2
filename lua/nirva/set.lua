-- disable netrw in favour of nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- num column
vim.o.relativenumber = true
vim.o.number = true
vim.o.signcolumn = "auto"

-- tab
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.expandtab = true
vim.o.smarttab = true
vim.o.smartindent = true
vim.o.wrap = true

-- other
vim.o.mouse = "nv"

-- globals
vim.g.mapleader = ' '
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 30
vim.g.netrw_liststyle = 0
