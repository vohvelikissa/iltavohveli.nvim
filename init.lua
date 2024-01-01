-- start of functions
-- colorscheme switcher
tokyocolorshitid = 0
function colorschemeswitcher()
	if (tokyocolorshitid == 0) then
		vim.cmd(":colorscheme tokyonight-moon");
		vim.api.nvim_set_hl(0, "Normal", { guibg = NONE, ctermbg = NONE })
		tokyocolorshitid = tokyocolorshitid + 1;
	else if (tokyocolorshitid == 1) then 
		vim.cmd(":colorscheme tokyonight-night");
		vim.api.nvim_set_hl(0, "Normal", { guibg = NONE, ctermbg = NONE })
		tokyocolorshitid = tokyocolorshitid + 1;
	else if (tokyocolorshitid == 2) then
		vim.cmd(":colorscheme tokyonight-storm");
		vim.api.nvim_set_hl(0, "Normal", { guibg = NONE, ctermbg = NONE })
		tokyocolorshitid = 0;
	end
	end
	end
end
-- run c code
function runccode()
	-- TODO: detect the build sys
	-- TODO: build the project with that
	-- TODO: run the project appropriately
end
-- run python code
function runpythoncode()
	-- TODO: detect if django
	-- TODO: run
end
-- run js code
function runjscode()
	-- TODO: build if typescript
	-- TODO: run typescript
end
-- run java code
function runjavacode()
	-- TODO: build the java
	-- TODO: run the java
end
-- run code
function runthefuckingcode()
	filetypediarrhea = vim.bo.filetype;
	if (filetypediarrhea == "c") then
		runccode()
	end
	if (filetypediarrhea == "py") then
		runpythoncode()
	end
	if (filetypediarrhea == "js" or filetypediarrhea == "ts") then
		runjscode()
	end
	if (filetypediarrhea == "java") then
		runjavacode()
	end
	if (filetypediarrhea == "lua") then
		print("fuck you")
	end
end
-- remove todo above cursor
function removetodoabovecursor()
	-- TODO: get position of next todo
	-- TODO: move there
	-- TODO: remove it
	-- TODO: move back to the original spot
end
-- end of functions
vim.keymap.set('n', 'å', ':tabnew<Return>:echo "OwO a newie bewie tab got created just nowwww"<Return>')
vim.keymap.set('n', 'ö', ':tabprevious<Return>:echo "UwU you look strong with those fast fingers"<Return>')
vim.keymap.set('n', 'ä', ':tabclose<Return>:echo "UwO why delete when you can just go back?"<Return>')
vim.cmd(":set mouse=")
vim.cmd(":set colorcolumn=80")
vim.cmd(":set number")
vim.cmd(":set relativenumber")
-- include a plugin handler
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
vim.g.mapleader = " "
require("lazy").setup({
	{"folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {},},
	"roobert/activate.nvim",
	-- the things below this line in this config are games. Do delete.
	'ThePrimeagen/vim-be-good', -- :VimBeGood
	'alec-gibson/nvim-tetris',  -- :Tetris
	'seandewar/nvimesweeper',   -- :Nvimesweeper
	-- :Sudoku
	{
  	'jim-fx/sudoku.nvim',
  	cmd = "Sudoku",
  	config = function()
    		require("sudoku").setup({
      			-- configuration ...
    		})
  	end
	}	
})
-- TODO: include a plugin for handling lsp shit
	-- TODO: C
	-- TODO: Python
	-- TODO: JavaScript
	-- TODO: Java
vim.cmd(":colorscheme tokyonight-moon")
vim.keymap.set('n', '<F6>', function() colorschemeswitcher() end)
vim.api.nvim_set_hl(0, "Normal", { guibg = NONE, ctermbg = NONE })
vim.keymap.set('n', '<F9>', ':Lexplore<Return>')
vim.keymap.set('n', '<F5>', function () runthefuckingcode() end)
-- TODO: create a graphical buffer thing that looks like a penguin
-- TODO: make a completing thing that uses gpt models
	-- TODO: use <F3> to switch the model
		-- TODO: gpt 3
		-- TODO: gpt 4
	-- TODO: load the key from somewhere else
	-- TODO: use <F4> to autocomplete
-- TODO: add a thing that gets a keyword of a given language from cht.sh
vim.keymap.set('n', '<F8>', '/TODO<Enter>dd')
