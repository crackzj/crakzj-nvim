-- 设置文件编码格式 utf-8
vim.g.encoding = "utf-8"

-- 设置终端编码格式 utf-8
vim.o.termencoding = "utf-8"
-- 开启语法高亮
vim.o.syntax = "enable"
-- 相对行号
vim.o.relativenumber = true
-- 显示行号
vim.o.number = true
-- 高亮所在行
vim.o.cursorline = true
-- 自动换行
vim.o.wrap = true
-- 显示光标位置
vim.o.ruler = true
-- 边输入边搜索
vim.o.incsearch = true
-- 开启搜索匹配高亮
vim.o.hlsearch = true

vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

vim.o.expandtab = true
vim.bo.expandtab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

vim.o.smartindent = true
vim.o.history = 1000

vim.o.list = true

vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true

vim.keymap.set('i','jj','<esc>')
