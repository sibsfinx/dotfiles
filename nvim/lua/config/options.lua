-- Loaded before LazyVim. Leader must be set here.
vim.g.mapleader = ","
vim.g.maplocalleader = "\\"

local o = vim.opt
o.number = true
o.relativenumber = false -- like the old config
o.wrap = false
o.cursorline = true
o.mouse = "a"
o.ignorecase = true
o.smartcase = true
o.swapfile = false
o.backup = false
o.writebackup = false
o.undofile = true
o.clipboard = "unnamedplus" -- system clipboard, so F1/F2 are no longer needed
o.spelllang = { "en_us" }

-- don't reformat on save; format on demand with ,cf
vim.g.autoformat = false
-- keep the picker/explorer snappy, no animations
vim.g.snacks_animate = false
