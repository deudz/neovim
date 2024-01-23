local o = vim.o

-- indenting
o.et = true  -- expandtab
o.sta = true -- smarttab
o.si = true  -- smartindent
o.sw = 2     -- shiftwidth

-- utils
o.ic = true          -- ignorecase
o.cb = "unnamedplus" -- clipboard

-- display
o.cul = true -- cursorline
o.ts = 2     -- tabstop
o.nu = true  -- number
o.nuw = 2    -- numberwidth
o.ls = 1     -- laststatus
o.tgc = true -- termguicolors

vim.g.mapleader = " "
vim.g.maplocalleader = " "
