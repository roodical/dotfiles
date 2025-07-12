return {
    'neovim/nvim-lspconfig',
    config = function()
        local lspconfig = require('lspconfig')
        lspconfig.ruby_lsp.setup({
            -- init_options = {
            --     formatter = 'standard',
            --     linters = { 'standard' },
            -- },
        })

        -- lspconfig.rubocop.setup {}

        lspconfig.rust_analyzer.setup {
            -- Server-specific settings. See `:help lspconfig-setup`
            settings = {
                ['rust-analyzer'] = {},
            },
        }
    end
}
