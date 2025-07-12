return {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true },
    config = function()
        local code_companion_spinner = require('config.code_companion_lua_line')
        require('lualine').setup {
            sections = {
                lualine_c = {
                    code_companion_spinner,
                    'filename',
                },
            },
        }
    end
}
