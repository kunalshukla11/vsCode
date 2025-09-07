if vim.g.vscode then
	-- VSCode Neovim
	require("config.lazy")
	require("user.vscode_keymaps")
else
	-- Ordinary Neovim
	require("config.lazy")
end
