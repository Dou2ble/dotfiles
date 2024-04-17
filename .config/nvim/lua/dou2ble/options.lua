local o = vim.opt

o.backup = false -- disable backups
o.writebackup = false
o.clipboard = "unnamedplus" -- use system clipboard
o.cmdheight = 2 -- make the command line taller
o.conceallevel = 0 -- make `` visible in markdown
o.fileencoding = "utf-8"
o.smartcase = true -- smarter searching
o.mouse = "a" -- enable the mouse
o.showtabline = 2 -- show tabline
o.smartindent = true -- makes indenting smarter
o.expandtab = true -- use ' ' instead of '\t'
o.shiftwidth = 2 -- 2 space indenting
o.number = true -- line numbers
o.relativenumber = false -- disable relative line numbers
o.undofile = true -- persistent undo
o.wrap = false -- disable line wrapping
o.scrolloff = 8 -- never let the cursor be on top or bottom
o.guifont = "Hack Nerd Font:h14" -- the font
o.termguicolors = true
o.mousemoveevent = true


o.completeopt = { "menuone", "noselect" }
o.updatetime = 300




