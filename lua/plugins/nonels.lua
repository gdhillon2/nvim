return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Keep Prettier for other file types if needed
                null_ls.builtins.formatting.prettier.with({
                    extra_args = {
                        "--tab-width", "4",
                        "--use-tabs", "false"
                    }
                }),
            },
        })

        -- Set up the keymap for formatting
        vim.keymap.set("n", "<leader>gf", function()
            vim.lsp.buf.format({ async = true })
        end, { desc = "Format file" })

        -- Set global options for indentation
        vim.opt.tabstop = 4
        vim.opt.shiftwidth = 4
        vim.opt.expandtab = true

        -- Set specific options for C files
        vim.api.nvim_create_autocmd("FileType", {
            pattern = "c",
            callback = function()
                vim.bo.tabstop = 4
                vim.bo.shiftwidth = 4
                vim.bo.expandtab = true
            end
        })
    end,
}
