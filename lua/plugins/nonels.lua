return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")

        null_ls.setup({
            sources = {
                null_ls.builtins.formatting.prettier,
                -- Add other sources if needed
            },
        })

        -- Custom function to format and then indent
        local function format_and_indent()
            vim.lsp.buf.format({ async = true }) -- Format the buffer asynchronously
            vim.defer_fn(function()
                vim.cmd('normal! gg=G')          -- Auto-indent the entire file
            end, 100)                            -- Delay to ensure formatting completes
        end

        -- Set up the keymap
        vim.keymap.set("n", "<leader>gf", format_and_indent, {})
    end,
}
