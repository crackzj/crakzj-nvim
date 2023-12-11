-- 配置golang
require'lspconfig'.gopls.setup{
  settings = {
    gopls = {
      ui = {
        completion = {
          usePlaceholders = true
        }
      }
    }
  }
}
require'lspconfig'.golangci_lint_ls.setup{}


