## Carckzj nvim

> 个人`neovim`配置文件,参考了知乎和自己在`github`查看的一些插件教程
## features
> 自动切换输入法(从insert模式换为其他模式时，自动切换为英文输入法，目前只适配了macos)

## 已安装插件列表

- rafamadriz/friendly-snippets

- kyazdni42/nvim-web-devicons

- neovim/nvim-lspconfig

- glepnir/dashboard-nvim

- nvim-tree/nvim-tree.lua
> 已映射`Ctrl + B` 打开/关闭文件资源管理器
> `A File Explorer For Neovim Written In Lua`
> [git地址](https://github.com/nvim-tree/nvim-tree.lua)
> 使用`packer`安装：
```
use {
  'nvim-tree/nvim-tree.lua',
  requires = {
    'nvim-tree/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}
```

- hrsh7th/cmp-vsnip

- hrsh7th/cmp-cmdline

- hrsh7th/cmp-path

- hrsh7th/nvim-cmp

- hrsh7th/cmp-buffer

- windwp/nvim-autopairs

- nvim-treesitter/nvim-treesitter

- lewis6991/gitsigns.nvim

- akinsho/bufferline.nvim

- simrat39/symbols-outline.nvim

- akinsho/toggleterm.nvim

- nvim-telescope/telescope.nvim/0.1.x

- neovim/nvim-lspconfig

- wbthomason/packer.nvim

- mfussenegger/nvim-dap

- nvim-lua/plenary.nvim

- kylechui/nvim-surround

