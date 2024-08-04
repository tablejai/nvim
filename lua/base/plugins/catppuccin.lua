local catppuccin_setup, catppuccin = pcall(require, "catppuccin")
if not catppuccin_setup then
	return
end

catppuccin.setup({ flavour = "frappe" })

vim.cmd.colorscheme("catppuccin")
