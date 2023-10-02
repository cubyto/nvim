local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
	-- 
  -- Insert packer plugins between this lines
	
	-- Theme - Line - Dashboard
	use "oxfist/night-owl.nvim"
	use "bluz71/vim-nightfly-colors"

	use "glepnir/dashboard-nvim"

	use "nvim-lualine/lualine.nvim"
	
	-- autopairs
	use "windwp/nvim-autopairs"
	use "windwp/nvim-ts-autotag"

	-- nvim tree for sidebar && telescope
	use "nvim-tree/nvim-tree.lua"
	use "nvim-tree/nvim-web-devicons"
	use 'ryanoasis/vim-devicons'
	use "nvim-treesitter/nvim-treesitter"
	use {
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-telescope/telescope-fzf-native.nvim", build = "make",
			"nvim-telescope/telescope-file-browser.nvim"
	}}
	use "stevearc/dressing.nvim"
	
	-- Completions
	use "hrsh7th/nvim-cmp"
	use "hrsh7th/cmp-buffer"
	use "hrsh7th/cmp-path"
	use "hrsh7th/cmp-nvim-lsp"
	use "hrsh7th/cmp-nvim-lua"

	-- Snippets
	use "L3MON4D3/LuaSnip"
	use "rafamadriz/friendly-snippets"
	use "saadparwaiz1/cmp_luasnip"

	-- Formatter
	use "stevearc/conform.nvim"
  use "mfussenegger/nvim-lint"
  
	-- lsp -> Languaje Server Protocols
	use {
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		"glepnir/lspsaga.nvim", branch = "main", --type window like vscode
		"jose-elias-alvarez/typescript.nvim",
		"onsails/lspkind.nvim",
		"antosha417/nvim-lsp-file-operations",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
	}
	-- end of plugins section
	--
  if packer_bootstrap then
    require('packer').sync()
	use "williamboman/mason.nvim"
  end
end)
