require("nvim-tree").setup({
    -- 关闭文件时，自动关闭
    auto_close = true,
    filters = {
        -- 不显示 .git 目录中的内容
        custom = {
            ".git/"
        },
        -- 显示 .gitignore
        exclude = {
            ".gitignore"
        },
        -- 不显示隐藏文件
        dotfiles = true
    },
    -- 以图标显示git 状态
    git = {
        enable = true
    }
})
