local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Only set these keymaps if we're in VSCode
if not vim.g.vscode then
	return
end

-- remap leader key
keymap("n", "<Space>", "", opts)

-- ===========================
-- BASIC EDITOR KEYMAPS
-- ===========================

-- yank to system clipboard
keymap({ "n", "v" }, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({ "n", "v" }, "<leader>p", '"+p', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- paste preserves primal yanked piece
keymap("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

-- ===========================
-- VSCODE INTEGRATION KEYMAPS
-- ===========================

-- General VSCode actions
-- TODO: Check all below keymaps for completenes/ correctness , use vs code keybindings to perform vs actions
-- Anyhthing related to neovim extension shold be configured here
keymap(
	{ "n", "v" },
	"<leader>b",
	"<cmd>lua require('vscode').action('editor.debug.action.toggleBreakpoint')<CR>",
	{ desc = "Toggle Breakpoint" }
)
keymap(
	{ "n", "v" },
	"<leader>d",
	"<cmd>lua require('vscode').action('editor.action.showHover')<CR>",
	{ desc = "Show Hover" }
)
keymap(
	{ "n", "v" },
	"<leader>a",
	"<cmd>lua require('vscode').action('editor.action.quickFix')<CR>",
	{ desc = "Quick Fix" }
)
keymap(
	{ "n", "v" },
	"<leader>sp",
	"<cmd>lua require('vscode').action('workbench.actions.view.problems')<CR>",
	{ desc = "Show Problems" }
)
keymap(
	{ "n", "v" },
	"<leader>cn",
	"<cmd>lua require('vscode').action('notifications.clearAll')<CR>",
	{ desc = "Clear Notifications" }
)
keymap(
	{ "n", "v" },
	"<leader>cp",
	"<cmd>lua require('vscode').action('workbench.action.showCommands')<CR>",
	{ desc = "Command Palette" }
)
keymap({ "n", "v" }, "<leader>pr", "<cmd>lua require('vscode').action('code-runner.run')<CR>", { desc = "Run Code" })

-- File operations
keymap(
	{ "n", "v" },
	"<leader>ff",
	"<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>",
	{ desc = "Quick Open" }
)

-- ===========================
-- HARPOON KEYMAPS
-- ===========================
keymap(
	{ "n", "v" },
	"<leader>ha",
	"<cmd>lua require('vscode').action('vscode-harpoon.addEditor')<CR>",
	{ desc = "Harpoon Add" }
)
keymap(
	{ "n", "v" },
	"<leader>ho",
	"<cmd>lua require('vscode').action('vscode-harpoon.editorQuickPick')<CR>",
	{ desc = "Harpoon Open" }
)
keymap(
	{ "n", "v" },
	"<leader>he",
	"<cmd>lua require('vscode').action('vscode-harpoon.editEditors')<CR>",
	{ desc = "Harpoon Edit" }
)
keymap(
	{ "n", "v" },
	"<leader>h1",
	"<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor1')<CR>",
	{ desc = "Harpoon 1" }
)
keymap(
	{ "n", "v" },
	"<leader>h2",
	"<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor2')<CR>",
	{ desc = "Harpoon 2" }
)
keymap(
	{ "n", "v" },
	"<leader>h3",
	"<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor3')<CR>",
	{ desc = "Harpoon 3" }
)
keymap(
	{ "n", "v" },
	"<leader>h4",
	"<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor4')<CR>",
	{ desc = "Harpoon 4" }
)
keymap(
	{ "n", "v" },
	"<leader>h5",
	"<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor5')<CR>",
	{ desc = "Harpoon 5" }
)
keymap(
	{ "n", "v" },
	"<leader>h6",
	"<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor6')<CR>",
	{ desc = "Harpoon 6" }
)
keymap(
	{ "n", "v" },
	"<leader>h7",
	"<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor7')<CR>",
	{ desc = "Harpoon 7" }
)
keymap(
	{ "n", "v" },
	"<leader>h8",
	"<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor8')<CR>",
	{ desc = "Harpoon 8" }
)
keymap(
	{ "n", "v" },
	"<leader>h9",
	"<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor9')<CR>",
	{ desc = "Harpoon 9" }
)

-- ===========================
-- PROJECT MANAGER KEYMAPS
-- ===========================
keymap(
	{ "n", "v" },
	"<leader>pa",
	"<cmd>lua require('vscode').action('projectManager.saveProject')<CR>",
	{ desc = "Save Project" }
)
keymap(
	{ "n", "v" },
	"<leader>po",
	"<cmd>lua require('vscode').action('projectManager.listProjectsNewWindow')<CR>",
	{ desc = "Open Project" }
)
keymap(
	{ "n", "v" },
	"<leader>pe",
	"<cmd>lua require('vscode').action('projectManager.editProjects')<CR>",
	{ desc = "Edit Projects" }
)

keymap('n', '<C-m>', 'mciw*<Cmd>nohl<CR>', { remap = true })


