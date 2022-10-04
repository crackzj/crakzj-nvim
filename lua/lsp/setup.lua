require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- 配置golang
require'lspconfig'.gopls.setup{}
require'lspconfig'.golangci_lint_ls.setup{}


-- asm-lsp
require'lspconfig'.asm_lsp.setup{}

-- vue
require'lspconfig'.volar.setup{
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
}


