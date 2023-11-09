-- 设置文件编码格式 utf-8
vim.g.encoding = "utf-8"
vim.o.fileencoding = "utf-8"

-- 设置终端编码格式 utf-8
vim.o.termencoding = "utf-8"

-- jk移动时光标下上方保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 开启语法高亮
vim.o.syntax = "enable"

-- 相对行号
vim.wo.relativenumber = true
-- 显示行号
vim.wo.number = true
-- 高亮所在行
vim.wo.cursorline = true

-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"

--右侧参考线 超过表示代码太长 建议换行
vim.wo.colorcolumn = "80"

--缩进2个空格等于一个Tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true

-- >> << 缩进
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2

--新行对齐当前行 空格代替tab
vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 搜索大小写不敏感 除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true

-- 边输入边搜索
vim.o.incsearch = true
-- 开启搜索匹配高亮
vim.o.hlsearch = true

-- 自动换行
vim.o.wrap = false
vim.wo.wrap = false

-- 显示光标位置
vim.o.ruler = true

-- 使用增强状态栏后不需要vim的模式提示
vim.o.showmode = false

-- 命令行高为2 提供足够的显示空间
vim.o.cmdheight = 2

-- 当文件被外部程序修改时 自动加载
vim.o.autoread = true
vim.bo.autoread = true

-- 行尾可以跳到下一行
vim.o.whichwrap = 'b,s,<,>,[,],h,l'

--允许隐藏被修改的buffer
vim.o.hidden = true

-- 鼠标支持
vim.o.mouse = "a"

-- 禁止创建备份文件
vim.o.backpup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller updatetime
vim.o.updatetime = 300

-- 等待mappings
vim.o.timeoutlen = 500

--split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true

-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"

vim.o.history = 1000

-- 显示不可见字符
vim.o.list = true
--把空格显示为点
--vim.o.listchars ="space:·"

--样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

--补全增强
vim.o.wildmenu = true

-- 使用系统剪贴板
vim.opt.clipboard = "unnamedplus"
