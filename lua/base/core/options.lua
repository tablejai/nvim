local opt = vim.opt

-- line numbers

-- Shows relative number of lines with respect to the current line
-- opt.relativenumber = true

-- Shows line numbers
opt.number = true

-- tabs & indentation
-- Changes the number of "spaces" for the definition of tabbing
opt.tabstop = 4
-- Indentation for a new line of a new scope
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

-- line wrapping
opt.wrap = false

-- search settings
opt.ignorecase = true
opt.smartcase = true

-- cursor line
opt.cursorline = true

-- appearance
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes"

-- backspace
opt.backspace = "indent,eol,start"

--clipboard
-- When yank and paste uses system clipboard
opt.clipboard:append("unnamedplus")

-- split windows
opt.splitright = true
opt.splitbelow = true

-- Considers a word with hyphen an entire word
opt.iskeyword:append("-")
