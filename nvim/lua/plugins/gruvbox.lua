return { 
    "ellisonleao/gruvbox.nvim",
    lazy = false,
    config = function()
        require("gruvbox").setup({
            overrides = {
                SignColumn = {bg = "#282828"},
            }
        })
        vim.o.background = "dark" -- or "light" for light mode
        vim.cmd([[colorscheme gruvbox]])
    end
}
