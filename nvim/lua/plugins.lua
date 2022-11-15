return require('packer').startup(function()
	-- Packer can manage itself
        use 'wbthomason/packer.nvim'	
	-- Impatient for faster loading
	use 'lewis6991/impatient.nvim'
	--Indent Blankline
    	use "lukas-reineke/indent-blankline.nvim"
	-- coloscheme
	use 'gruvbox-community/gruvbox'
	-- Projects
	use 'ahmedkhalf/project.nvim'
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
end)

