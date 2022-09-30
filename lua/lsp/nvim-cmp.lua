local lspkind = require('lspkind')
local cmp = require'cmp'

cmp.setup {
    -- 指定 snippet 引擎
    snippet = {
        expand = function(args)
    -- For `vsnip` users
        vim.fn["vsnip#anonymous"](args.body)
    -- For `luasnip` users
    -- require(`luasnip`).lsp_expand(args.body)
    -- For `ultisnips` users
    -- vim.fn["UltiSnips#Anon"](args.body)
    -- For `snippy` users
    -- require'snippy'.expand_snippet(args.body)
    end,
    },

    -- 来源
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'vsnip' },
    },{
        {name = 'buffer'},
        {name = 'path'}
    }),
    -- 快捷键
    mapping = require'keybindings'.cmp(cmp),
    -- 使用 lspkind-nvim显示类型图标
    formatting = {
        format = lspkind.cmp_format({
            with_text = true, -- do not show text alongside icons
            maxwidth = 50, -- prevent the popup from showing more than provided characters
            before = function (entry, vim_item)
                vim_item.menu = "["..string.upper(entry.source.name).."]"
                return vim_item
            end
        })
    },
}

cmp.setup.cmdline('/',{
    sources = {
        {name = 'buffer'}
    }
})

cmp.setup.cmdline(':',{
    sources = cmp.config.sources({
        {name = 'path'}
    },{
        {name = 'cmdline'}
    })
})
