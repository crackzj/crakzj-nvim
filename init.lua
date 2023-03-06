require("basic")
require("keybindings")
require("autocmd")
require("plugins")
require("plugin-config/nvimtree")
require("plugin-config/bufferline")
require("plugin-config/lualine")
require("plugin-config/outline")
require("plugin-config/toggleterm")
require("plugin-config/telescope")
require('lsp/nvim-cmp')
require("lsp/setup")
require("lsp/css")
--vim.opt.runtimepath:append("$HOME/Documents/Code/Lua/example")
--local pkg = require('example')
--vim.pretty_print("hello world")
--vim.notify(pkg.info)

if vim.g.vscode then
    -- VSCode extension
else
    -- ordinary Neovim
end
-- Example config in Lua
vim.g.tokyonight_style = "night"
vim.g.tokyonight_italic_functions = true
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }

-- Load the colorscheme
vim.cmd[[colorscheme tokyonight]]

vim.opt.termguicolors = true

local db = require('dashboard')
  db.setup({
    theme = 'hyper',
    config = {
      week_header = {
       enable = true,
      },
      shortcut = {
        { desc = ' Update', group = '@property', action = 'Lazy update', key = 'u' },
        {
          icon = ' ',
          icon_hl = '@variable',
          desc = 'Files',
          group = 'Label',
          action = 'Telescope find_files',
          key = 'f',
        },
        {
          desc = ' Apps',
          group = 'DiagnosticHint',
          action = 'Telescope app',
          key = 'a',
        },
        {
          desc = ' dotfiles',
          group = 'Number',
          action = 'Telescope dotfiles',
          key = 'd',
        },
      },
    },
  })

--db.custom_header = {
--    '',
--    '',
--    '          ▀████▀▄▄              ▄█ ',
--    '            █▀    ▀▀▄▄▄▄▄    ▄▄▀▀█ ',
--    '    ▄        █          ▀▀▀▀▄  ▄▀  ',
--    '   ▄▀ ▀▄      ▀▄              ▀▄▀  ',
--    '  ▄▀    █     █▀   ▄█▀▄      ▄█    ',
--    '  ▀▄     ▀▄  █     ▀██▀     ██▄█   ',
--    '   ▀▄    ▄▀ █   ▄██▄   ▄  ▄  ▀▀ █  ',
--    '    █  ▄▀  █    ▀██▀    ▀▀ ▀▀  ▄▀  ',
--    '   █   █  █      ▄▄           ▄▀   ',
--    '',
--    '',
--}
--db.custom_center = {
--    {icon = "  ", desc = 'Recently lastest session    ', shortcut = "Leader s l", action = ""},
--    {icon = "  ", desc = "Recently opened files       ", shortcut = "Leader f h", action = ""},
--    {icon = "  ", desc = "Find File                   ", shortcut = "leader f f", action = ""},
--    {icon = "  ", desc = "File Browser                ", shortcut = "leader f b", action = ""},
--    {icon = "  ", desc = "Find Word                   ", shortcut = "leader f w", action = ""},
--    {icon = "  ", desc = "Open Personal dotfiles      ", shortcut = "leader e e", action = "edit $MYVIMRC"}
--}

--if executable('im-select')
--    autocmd InsertLeave * :call system("im-select com.apple.keylayout.ABC")
--    autocmd CmdlineLeave * :call system("im-select com.apple.keylayout.ABC") 
--endif

vim.api.nvim_create_autocmd({ "InsertLeave" }, {
    pattern = { "*" },
    callback = function()
        vim.fn.system("inputsource com.apple.keylayout.ABC")
    end,
})

