return
{
    "neovim/nvim-lspconfig", 
    config = function()
        local lspconfig = require("lspconfig")
        local lspconfig_defaults = lspconfig.util.default_config
        lspconfig_defaults.capabilities = vim.tbl_deep_extend(
            "force",
            lspconfig_defaults.capabilities,
            require("cmp_nvim_lsp").default_capabilities()
        )
        lspconfig.clangd.setup({ filetypes = { "c", "h" }})
        lspconfig.cmake.setup({})
        lspconfig.djlsp.setup({})
        lspconfig.jedi_language_server.setup({})
        lspconfig.ts_ls.setup({})

        -- vscode-langservers-extracted
        lspconfig.eslint.setup({})
        lspconfig.cssls.setup({})
        lspconfig.html.setup({})
        lspconfig.jsonls.setup({})
    end,
}
