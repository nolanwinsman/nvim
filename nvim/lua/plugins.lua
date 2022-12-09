return require('packer').startup(function()
	-- Packer can manage itself
    use 'wbthomason/packer.nvim'
	-- Useful lua functions used by lots of plugins
	use { "nvim-lua/plenary.nvim"}
	-- Impatient for faster loading
	use 'lewis6991/impatient.nvim'
	-- Devicons
	use { "kyazdani42/nvim-web-devicons"}
	--Indent Blankline
    	use "lukas-reineke/indent-blankline.nvim"
	-- coloscheme
	use 'gruvbox-community/gruvbox'
	-- Alpha nvim
	use {
		'goolord/alpha-nvim',
    		requires = { 'kyazdani42/nvim-web-devicons' },
    		config = function ()
        		require'alpha'.setup(require'alpha.themes.startify'.config)
    		end
		}	
	-- fzf-lua
	use { 'ibhagwan/fzf-lua',
  		-- optional for icon support
  		requires = { 'kyazdani42/nvim-web-devicons' }
		}
	-- Wakatime
	use 'wakatime/vim-wakatime'
	-- Use Ctrl+fp to list recent git projects
	use {
		"ahmedkhalf/project.nvim",
		config = function()
		require("project_nvim").setup {}
		end
		}	
	-- Telescope
	use { "nvim-telescope/telescope.nvim"}
	-- Treesitter
	use { "nvim-treesitter/nvim-treesitter"}
	-- Gitsigns
	use {'lewis6991/gitsigns.nvim'}
	-- File Explorer in Vim Ctrl+f	
	use { "kyazdani42/nvim-tree.lua"}
	use { "akinsho/bufferline.nvim", tag = "v3.*", requires = "kyazdani42/nvim-web-devicons"}  use { "moll/vim-bbye"}
	
end)

