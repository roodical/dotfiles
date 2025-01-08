return {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set("n", "<leader>gs", function() vim.cmd.Git('status') end)
        vim.keymap.set("n", "<leader>gr", function() vim.cmd.Git('restore .') end)
        vim.keymap.set("n", "<leader>ga", function() vim.cmd.Git('add .') end)

        vim.keymap.set("n", "<leader>gc", function()
            local commit_message = vim.fn.input("Commit message: ")
            if commit_message ~= "" then
                vim.cmd("Git commit -m '" .. commit_message .. "'")
            else
                print("Commit message cannot be empty")
            end
        end)

        vim.keymap.set("n", "<leader>gp", function()
            local branch = vim.fn.system("git branch --show-current"):gsub("%s+", "")
            vim.cmd('Git push origin ' .. branch)
        end)

    end
}
