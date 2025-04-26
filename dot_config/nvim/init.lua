-- [[ Global options ]]
vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.have_nerd_font = true

-- [[ Setting options ]]
require("options")

-- [[ Basic Keymaps ]]
require("keymaps")

-- [[ Basic Autocommands ]]
require("autocommands")

-- [[ Install `lazy.nvim` plugin manager ]]
if vim.fn.exists("g:vscode") == 0 then
	-- only load plugins if not in VSCode
	require("lazy-bootstrap")
end

-- [[ Configure and install plugins ]]
if vim.fn.exists("g:vscode") == 0 then
	-- only load plugins if not in VSCode
	require("lazy-plugins")
end

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
