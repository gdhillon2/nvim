return {
    {
        "EdenEast/nightfox.nvim",
        config = function()
            require("nightfox").setup({
                options = {
                    styles = {
                        tabline = "NONE" -- This should disable tabline styling
                    }
                }
            })
            vim.cmd("colorscheme nightfox") -- Ensure the theme is applied
        end
    }
}
