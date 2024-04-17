local lspconfig = require("lspconfig")

require("mason").setup()
require("mason-lspconfig").setup{
  automatic_installation = true
}

lspconfig.pyright.setup {}
lspconfig.tsserver.setup {}
lspconfig.rust_analyzer.setup {}
lspconfig.clangd.setup {}
lspconfig.gopls.setup {}
lspconfig.omnisharp.setup {}
lspconfig.lua_ls.setup {
  settings = {
    Lua = {
      diagnostics = {
        globals = { 'vim' }
      }
    }
  }
}
