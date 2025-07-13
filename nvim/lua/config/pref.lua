vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
-- vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- vim.opt.colorcolumn = "80"

-- if os.getenv("WAYLAND_DISPLAY") then
--   vim.g.clipboard = {
--     name = "WL-Clipboard",
--     copy = {
--       ["+"] = "wl-copy --foreground --type text/plain",
--       ["*"] = "wl-copy --foreground --type text/plain --primary",
--     },
--     paste = {
--       ["+"] = "wl-paste --no-newline",
--       ["*"] = "wl-paste --no-newline --primary",
--     },
--   }
-- end

vim.api.nvim_set_option("clipboard", "unnamedplus")
-- vim.opt.clipboard = "unnamedplus"
