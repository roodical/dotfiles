-- return { 
--     "ellisonleao/gruvbox.nvim",
--     lazy = false,
--     config = function()
--         require("gruvbox").setup({
--             bold = false,
--             italic = {
--                 strings = true,
--                 emphasis = true,
--                 comments = true,
--                 operators = false,
--                 folds = true,
--             },
--             overrides = {
--                 SignColumn = {bg = "#282828", fg="#282828"},
                
--             }
--         })
--         vim.o.background = "dark" -- or "light" for light mode
--         vim.cmd([[colorscheme gruvbox]])
--     end
-- }

-- return {
--     "olimorris/onedarkpro.nvim",
--     priority = 1000, -- Ensure it loads first
--     config = function()
--         require("onedarkpro").setup({
--             theme = "onedark", -- Or "onedark", "darker", "cool", "warmer"
--             colors = {
--                 bg = "#1d2021",
--             },
--         })
--         vim.cmd([[colorscheme onedark]])
--     end,
-- }


-- return {
--     "folke/tokyonight.nvim",
--     lazy = false,
--     config = function()
--         require("tokyonight").setup({
--             style = "night",
--             -- transparent = true,
--             styles = {
--                 -- sidebars = "transparent",
--                 -- floats = "transparent",
--             },
--             on_highlights = function(hl, c)
--                 -- hl.CursorLineNr.fg = c.blue
--                 -- hl.LineNr.fg = c.fg
--                 -- hl.SignColumn.bg = c.bg
--                 -- hl.Normal.bg = c.bg
--             end,
--         })
--         vim.cmd([[colorscheme tokyonight]])
--     end,
-- }

return     {
    'sainnhe/gruvbox-material',
    lazy = false,
    priority = 1000,
    config = function()
        -- Optionally configure and load the colorscheme
        -- directly inside the plugin declaration.
        vim.g.gruvbox_material_enable_italic = true
        vim.g.gruvbox_material_better_performance = true
        vim.g.gruvbox_material_background = 'hard' -- 'soft', 'medium', 'hard'
        vim.cmd.colorscheme('gruvbox-material')
    end
}
