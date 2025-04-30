-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.3',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

    use('Mofiqul/dracula.nvim')

    use({
        'projekt0n/github-nvim-theme',
        config = function()
            vim.cmd('colorscheme github_dark_high_contrast')
        end
    })

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')

	use('theprimeagen/harpoon')

	use('mbbill/undotree')

	use('tpope/vim-fugitive')
    use('tpope/vim-surround')
    use('tpope/vim-commentary')

	use {
		'VonHeikemen/lsp-zero.nvim',
		branch = 'v3.x',
		requires = {
			-- LSP Support
			{'neovim/nvim-lspconfig'},
			{'williamboman/mason.nvim'},
			{'williamboman/mason-lspconfig.nvim'},

			-- Autocompletion
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}

    use {
        'nvimtools/none-ls.nvim',
        requires = {
            "nvimtools/none-ls-extras.nvim",
        }
    }

    use('MunifTanjim/prettier.nvim')

    use('christoomey/vim-tmux-navigator')

    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }    

    use('airblade/vim-gitgutter')
    use('sunjon/shade.nvim')

    use {
        'mfussenegger/nvim-dap',
        config = function()
            local dap = require('dap')
            local ui = require('dapui')

            require('dapui').setup()
            require('dap-go').setup()
        end
    }
    use {
        'leoluz/nvim-dap-go',
        config = function()
            require('dap-go').setup()
        end
    }
    use { "rcarriga/nvim-dap-ui", requires = {"mfussenegger/nvim-dap", "nvim-neotest/nvim-nio"} }

    use { 
        'deleonn/notetaker.nvim',
        config = function()
            require('notetaker').set_notes_dir(vim.fn.expand('~/Notes'))
        end
    }
end)
