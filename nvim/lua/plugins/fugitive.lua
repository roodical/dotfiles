return {
    'tpope/vim-fugitive',
    config = function()
        vim.keymap.set("n", "<leader>gs", function() vim.cmd.Git('status') end)
        vim.keymap.set("n", "<leader>gr", function() vim.cmd.Git('restore .') end)
        vim.keymap.set("n", "<leader>ga", function() vim.cmd.Git('add .') end)

        vim.keymap.set("n", "<leader>gb", function() vim.cmd.Git('blame') end)
        vim.keymap.set("n", "<leader>gl", function() vim.cmd.Git('log %') end)

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
            if branch == "master" or branch == "main" or branch == "development" or branch == "staging" then
                print("This was a mistake right?")
                return
            end
            vim.cmd('Git push origin ' .. branch)
        end)

        vim.keymap.set("n", "<leader>go", function()
            local line = vim.fn.line(".")
            local file = vim.fn.expand("%")
            local repo_url = vim.fn.system("git config --get remote.origin.url"):gsub("%.git", ""):gsub("\n", "")
            local commit_hash = vim.fn.system("git blame -L " .. line .. "," .. line .. " " .. file .. " | awk '{print $1}'"):gsub("\n", "")
            vim.fn.system("open " .. repo_url .. "/commit/" .. commit_hash)
        end)

        vim.keymap.set("n", "<leader>gS", function()
            local branch = vim.fn.input("Switch to branch: ")
            if branch == "" then
                print("Branch name cannot be empty")
                return
            end
            local branches = vim.fn.systemlist("git branch --list " .. branch)
            if #branches > 0 and branches[1] ~= "" then
                vim.cmd("Git switch " .. branch)
            else
                vim.cmd("Git switch -c " .. branch)
            end
        end)
    end
}
