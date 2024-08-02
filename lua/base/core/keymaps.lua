vim.g.mapleader = " "

local keymap = vim.keymap

-- USECASE: keymap.set(MODE, keys, function)

-- Not saving the delete into the registry
keymap.set("n", "x", '"_x')

-- Leaderkey related
-- Hides search highlight
keymap.set("n", "<leader>nh", ":nohl<CR>")
keymap.set("n", "<leader>w", ":w<CR>")
keymap.set("n", "<leader>w", ":w<CR>")

-- Increments and decrements of numbers
keymap.set("n", "<leader>+", "<C-a>")
keymap.set("n", "<leader>-", "<C-x>")

-- Splitting
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")
keymap.set("n", "<leader>se", "<C-w>=")
keymap.set("n", "<leader>sx", ":close<CR>")

-- Tab Management
keymap.set("n", "<C-t>", ":tabnew<CR>")
keymap.set("n", "<C-w>", ":tabclose<CR>")
keymap.set("n", "<S-k>", ":tabn<CR>")
keymap.set("n", "<S-j>", ":tabp<CR>")

-- plugin keymaps
-- vim-maximizer
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- toggle split window maximization

-- nvim-tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
