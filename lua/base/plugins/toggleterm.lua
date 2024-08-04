local toggleterm_setup, toggleterm = pcall(require, "toggleterm")
if not toggleterm_setup then
	return
end

toggleterm.setup({
	open_mapping = [[<c-\>]],
	direction = "float",
})

local toggleterm_term_setup, toggleterm_term = pcall(require, "toggleterm.terminal")
if not toggleterm_term_setup then
	return
end

local Terminal = toggleterm_term.Terminal

local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })

function _lazygit_toggle()
	lazygit:toggle()
end

vim.api.nvim_set_keymap("n", "<leader>g", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true })
