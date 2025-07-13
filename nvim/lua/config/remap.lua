vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- replaced with oil commands
-- vim.keymap.set("n", "<leader>ee", vim.cmd.Explore)
-- vim.keymap.set("n", "<leader>ev", vim.cmd.Vexplore)
-- vim.keymap.set("n", "<leader>eh", vim.cmd.Sexplore)

vim.keymap.set("n", "<leader>bp", ":b#<CR>")

-- vim.keymap.set("n", "<leader>y", '"+y', { noremap = true, silent = true })
-- vim.keymap.set("n", "<leader>p", '"+p', { noremap = true, silent = true })

-- # Go to definition (in a split)
-- function definition_split()
--   vim.lsp.buf.definition({
--     on_list = function(options)
--       -- if there are multiple items, warn the user
--       if #options.items > 1 then
--         vim.notify("Multiple items found, opening first one", vim.log.levels.WARN)
--       end

--       -- Open the first item in a vertical split
--       local item = options.items[1]
--       local cmd = "vsplit +" .. item.lnum .. " " .. item.filename .. "|" .. "normal " .. item.col .. "|"

--       vim.cmd(cmd)
--     end,
--   })
-- end

vim.keymap.set("v", "<C-j>", ":m '>+1<CR>gv=gv") -- move line up(v)
vim.keymap.set("v", "<C-k>", ":m '<-2<CR>gv=gv") -- move line down(v)

-- beautify json file with jq
vim.keymap.set("n", "<leader>jq", ":%!jq<CR>")

-- copy relative path of current file to system clipboard using pbcopy
vim.keymap.set("n", "<leader>cp", ":let @+ = expand('%:p')<CR>")

-- duplicate file in the same directory *.ext to *_copy.ext
vim.keymap.set("n", "<leader>cf", ":clear<bar>silent exec '!cp %:p %:p:h/%:t:r-copy.%:e'<bar>redraw<bar>echo 'Copied ' . expand('%:t') . ' to ' . expand('%:t:r') . '_copy.' . expand('%:e')<CR>")


local function get_visual_selection()
  local start_pos = vim.fn.getpos("'<")
  local end_pos = vim.fn.getpos("'>")
  local lines = vim.fn.getline(start_pos[2], end_pos[2])
  if #lines == 0 then return "" end
  lines[#lines] = string.sub(lines[#lines], 1, end_pos[3])
  lines[1] = string.sub(lines[1], start_pos[3])
  return table.concat(lines, "\n")
end

