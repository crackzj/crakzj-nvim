## Carckzj nvim

> 个人`neovim`配置文件,参考了知乎和自己在`github`查看的一些插件教程
> 个人设置的`leader`键为空格(`Space`)
## features
> 自动切换输入法(从insert模式换为其他模式时，自动切换为英文输入法，目前只适配了macos)

## 快捷键

- 翻页: `Ctrl + k`上翻10行，`Ctrl + j`下翻10行

- 窗口操作: `sv` 垂直分割窗口，`sh` 水平分割窗口，`sc`关闭当前窗口 ，`so`关闭其他窗口&保留当前窗口

- 窗口跳转: `leader(Space) + h`跳转到左边窗口，`Space + l`跳转到右边窗口，`Space + j`跳转到下边窗口，`Space + k`跳转到上边窗口

- `Buffer`操作(`bufferline`)插件:

> - `Space + number(1~9)`快速跳转到1～9个`Buffer`
>
> - `Space + bg`标记`buffer`快速跳转
>
> - `Space + bp`标记关闭某个`buffer`
>
> - `Space + bc`删除当前`buffer`
>
> - `Space + bo`关闭其他`buffer`,保留当前 
>
> - `gt`切换到下一个`buffer`，`gT`切换到上一个
>

- `Ctrl + b` `Space + e` `F2`: 打开/关闭文件查看`nvim-tree`

- `nvim-cmp`自动补全:

> - 

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

