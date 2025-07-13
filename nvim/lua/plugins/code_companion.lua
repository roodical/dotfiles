return {
    "olimorris/codecompanion.nvim",
    lazy = false,
    cmd = {
        "CodeCompanion",
        "CodeCompanionChat",
        "CodeCompanionActions",
        "CodeCompanionChat Toggle"
    },
    opts = {},
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-treesitter/nvim-treesitter",
        -- "ravitemer/mcphub.nvim",
    },
    keys = {
      {
        "<Leader>ca",
        "<cmd>CodeCompanionActions<CR>",
        desc = "Open the action palette",
        mode = { "n", "v" },
      },
      {
        "<Leader>cx",
        "<cmd>CodeCompanion<CR>",
        desc = "Inline chat",
        mode = { "n", "v" },
      },
      {
        "<Leader>cc",
        "<cmd>CodeCompanionChat Toggle<CR>",
        desc = "Toggle a chat buffer",
        mode = { "n", "v" },
      },
      {
        "<Leader>cv",
        "<cmd>CodeCompanionChat Add<CR>",
        desc = "Add code to a chat buffer",
        mode = { "v" },
      },
    },
    config = function()
        require("codecompanion").setup({
            adapters = {
                gemini = function()
                    return require("codecompanion.adapters").extend("gemini", {
                        env = {
                            api_key = 'cmd: gpg --batch --quiet --decrypt ~/.gemini/api_key.gpg',
                        },
                    })
                end,
            },
            strategies = {
                chat = {
                    adapter = "gemini",
                },
                inline = {
                    adapter = "gemini",
                },
            },
            extensions = {
                mcphub = {
                    callback = "mcphub.extensions.codecompanion",
                    opts = {
                        make_vars = true,
                        make_slash_commands = true,
                        show_result_in_chat = true
                    }
                }
            }
        })
    end,

}
