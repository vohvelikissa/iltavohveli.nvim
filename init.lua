local function bootstrap_pckr()
	local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

	if not (vim.uv or vim.loop).fs_stat(pckr_path) then
		vim.fn.system({
			'git',
			'clone',
			"--filter=blob:none",
			'https://github.com/lewis6991/pckr.nvim',
			pckr_path
		})
	end
	vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
	{
		"folke/tokyonight.nvim"
	},
	{
		"nvim-lualine/lualine.nvim",
		requires = {
			"nvim-tree/nvim-web-devicons",
			opt = true
		}
	}
}

require('lualine').setup{
	options = {
		theme = 'gruvbox',
		section_separators = '',
		component_separators = '',
	},
}

vim.cmd[[colorscheme tokyonight]]

-- TODO: install react snippets
-- TODO: install typescript snippets
-- TODO: install typescript lsp
-- TODO: install c lsp
-- TODO: install c snippets
-- TODO: install c++ lsp
-- TODO: install c++ snippets
-- TODO: install lua lsp
-- TODO: install lua snippets
-- TODO: install LaTeX snippets
-- TODO: install md snippets

vim.cmd[[
	highlight Normal guibg=none
	highlight NonText guibg=none
	highlight Normal ctermbg=none
	highlight NonText ctermbg=none
	set colorcolumn=80
	highlight ColorColumn ctermbg=0 guibg=lightblue
]]

vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')
vim.keymap.set('n', 'ä', ':Lexplore<CR>:echo "File Menu toggled"<CR>')
