return {
    "stevearc/conform.nvim",
    config = function()
        local conform = require("conform")
        conform.setup({
            log_level = vim.log.levels.DEBUG,
            formatters_by_ft = {
                javascript = { "prettierd", },
                typescript = { "prettierd", },
            },
        })

        vim.api.nvim_create_autocmd("BufWritePre", {
            pattern = "*",
            callback = function(args)
                require("conform").format({ bufnr = args.buf })
            end,
        })
    end,
}
