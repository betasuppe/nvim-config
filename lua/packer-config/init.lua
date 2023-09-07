return require("packer").startup(function()
	use("wbthomason/packer.nvim")

	use("kyazdani42/nvim-web-devicons")

	use("nvim-lua/plenary.nvim")
	use("ThePrimeagen/harpoon")

	use({ "nvim-telescope/telescope.nvim", tag = "0.1.0", requires = { { "nvim-lua/plenary.nvim" } } })

	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")

	use("neovim/nvim-lspconfig")

	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")

	use("hrsh7th/nvim-cmp")

	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")

	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})

	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup({
				size = 10,
				open_mapping = [[<c-\>]],
				shading_factor = 2,
				direction = "horizontal",
			})
		end,
	})

	use("jose-elias-alvarez/null-ls.nvim")

	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	use("mrjones2014/smart-splits.nvim")

	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})

	use({
		"rktjmp/lush.nvim",
	})

	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})

	use({
		"jayp0521/mason-null-ls.nvim",
		after = {
			"null-ls.nvim",
			"mason.nvim",
		},
	})

	use("andweeb/presence.nvim")
	use("nvim-lua/lsp-status.nvim")

	use("jlcrochet/vim-razor")

	use("rebelot/kanagawa.nvim")
	use("blazkowolf/gruber-darker.nvim")

	use({
		"mcchrish/zenbones.nvim",
		-- Optionally install Lush. Allows for more configuration or extending the colorscheme
		-- If you don't want to install lush, make sure to set g:zenbones_compat = 1
		-- In Vim, compat mode is turned on as Lush only works in Neovim.
		requires = "rktjmp/lush.nvim",
	})

	use("wakatime/vim-wakatime")
	use("lukas-reineke/indent-blankline.nvim")
end)
