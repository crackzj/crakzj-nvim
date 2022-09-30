return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    -- 主题
    use 'folke/tokyonight.nvim'
    -- tab
    use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
    -- 目录
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      },
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- statusline
    use { 'nvim-lualine/lualine.nvim',   requires = { 'kyazdani42/nvim-web-devicons', opt = true } }
    -- lsp server
    --use {'neovim/nvim-lspconfig', 'williamboman/nvim-lsp-installer'}
    use {'neovim/nvim-lspconfig'}
    use { "williamboman/mason.nvim" }
    -- nvim-cmp
    use 'hrsh7th/cmp-nvim-lsp' -- { name = nvim_lsp }
    use 'hrsh7th/cmp-buffer'   -- { name = 'buffer' },
    use 'hrsh7th/cmp-path'     -- { name = 'path' }
    use 'hrsh7th/cmp-cmdline'  -- { name = 'cmdline' }
    use 'hrsh7th/nvim-cmp'
      -- vsnip
    use 'hrsh7th/cmp-vsnip'    -- { name = 'vsnip' }
    use 'hrsh7th/vim-vsnip'
    use 'rafamadriz/friendly-snippets'
      -- lspkind
    use 'onsails/lspkind-nvim'
  -- auto-pair
    use {
    	"windwp/nvim-autopairs", config = function() require("nvim-autopairs").setup {} end
    }
    use { 'nvim-treesitter/nvim-treesitter'}
    -- git
    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup()
      end
    }
    -- outlinne
    use 'simrat39/symbols-outline.nvim'
      -- 添加另外插件
end)

