local g = vim.g
local o = vim.o

o.number = true
o.numberwidth = 2
o.cursorline = true
o.signcolum = "yes"

o.termguicolors = true

o.splitright = true
o.splitbelow = true

o.mouse = ""
o.ttymouse = ""

o.smarttab = true
o.expandtab = true
o.autoindent = true

o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = -1 -- if negative, shiftwidth is used

o.ignorecase = true
o.smartcase = true

o.backup = false
o.writebackup = false
o.undofile = true
o.swapfile = false

o.history = 50

vim.cmd('colorscheme nord')

g.mapleader = " "
g.maplocalleader= " "
