-- 配置golang
require("lsp.golang")
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

-- protobuf grpc
require'lspconfig'.bufls.setup{}

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

-- jsonls
require'lspconfig'.jsonls.setup{}
-- typescript javascript
require'lspconfig'.tsserver.setup{}

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

-- python
require'lspconfig'.pylsp.setup{
  settings = {
    pylsp = {
      plugins = {
        pycodestyle = {
          ignore = {'W391'},
          maxLineLength = 100
        }
      }
    }
  }
}

-- rust
require'lspconfig'.rust_analyzer.setup{
  settings = {
    ['rust-analyzer'] = {
      diagnostics = {
        enable = false
      }
    }
  }
}

--Enable (broadcasting) snippet capability for completion
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

require'lspconfig'.html.setup {
  capabilities = capabilities,
}


-- Show hover
vim.api.nvim_set_keymap("n","gh",":lua vim.lsp.buf.hover()<CR>",{noremap = true, silent = true})
 -- Jump to definition
vim.api.nvim_set_keymap("n","gd",":lua vim.lsp.buf.definition()<CR>",{noremap = true, silent = true})
 -- Open code actions using the default lsp UI, if you want to change this please see the plugins above
vim.api.nvim_set_keymap("n","<leader>ca",":lua vim.lsp.buf.code_action()<CR>",{noremap = true, silent = true})
 -- Open code actions for the selected visual range
vim.api.nvim_set_keymap("x","<leader>ca",":lua vim.lsp.buf.range_code_action()<CR>",{noremap = true, silent = true})
