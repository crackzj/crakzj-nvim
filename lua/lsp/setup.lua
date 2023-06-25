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
  init_options = {
    typescript = {
      tsdk = '.pnpm-store/global/typescript/lib'
    }
  },
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
}

--lua
require'lspconfig'.lua_ls.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
