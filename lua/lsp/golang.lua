-- 配置golang
local lspconfig = require("lspconfig")

--lspconfig.golangci_lint_ls.setup{}

lspconfig.gopls.setup({
  settings = {
    gopls = {
      analyses = {
        unusedparams = true,
      },
      staticcheck = true,
      gofumpt = true,
    },
  },
})


