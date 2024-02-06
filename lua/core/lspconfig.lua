require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})
require("mason-lspconfig").setup({
    ensure_installed = {
    "lua_ls",
    "clangd"
    }
})

require("lspconfig").lua_ls.setup{}
require("lspconfig").clangd.setup{}
