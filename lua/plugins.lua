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
    -- float term
    use "akinsho/toggleterm.nvim"
    --use {"akinsho/toggleterm.nvim", tag = '*', config = function()
     -- require("toggleterm").setup({
    --size = 20,
    --open_mapping = [[<c-\>]],
    --hide_numbers = true,
    --shade_filetypes = {},
    --shade_terminals = true,
    --shading_factor = 2,
    --start_in_insert = true,
    --insert_mappings = true,
    --persist_size = true,
    --direction = "float",
    --close_on_exit = true,
    --shell = vim.o.shell,
    --float_opts = {
     --   border = "curved",
      --  winblend = 0,
       -- highlights = {
        --    border = "Normal",
         --   background = "Normal"
        --}
    --}
--})
 --   end}
 use {
      'nvim-telescope/telescope.nvim',-- tag = '0.1.0',
        branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    -- for rust
    use 'simrat39/rust-tools.nvim'

    -- Debugging
    use 'nvim-lua/plenary.nvim'
    use 'mfussenegger/nvim-dap'
    -- 添加另外插件
end)

