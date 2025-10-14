local opt = vim.opt

-- looky
opt.autoindent = true
opt.wrap = false
opt.termguicolors = true
opt.relativenumber = true
opt.number = true
opt.tabstop = 4
opt.shiftwidth = 4
opt.cursorline = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

-- other??
opt.swapfile = false
opt.clipboard:append("unnamedplus")
opt.splitright = true
opt.splitbelow = true
