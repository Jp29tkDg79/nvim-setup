--  custom telescope
local telescope = require("Jp29tkDg79.plugins.telescope")

-- for conciseness
local keymap = vim.keymap

---------------------
-- General Keymaps
---------------------

-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") --  go to previous tab

---------------------
-- Telescope
---------------------
keymap.set("n", "<leader>ff", telescope.find_files)
keymap.set("n", "<leader>fl", telescope.live_grep)
keymap.set("n", "<leader>fg", telescope.grep_string)
keymap.set("n", "<leader>fb", telescope.buffers)
keymap.set("n", "<leader>fh", telescope.help_tags)
keymap.set("n", "<leader>fd", telescope.diagnostics)
keymap.set("n", "<leader>fs", telescope.file_browser)

---------------------
-- Telescope git
---------------------
keymap.set("n", "<leader>gc", telescope.git_commits) -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", telescope.git_bcommits) -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", telescope.git_branches) -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", telescope.git_status) -- list current changes per file with diff preview ["gs" for git status]

---------------------
-- restart lsp server
---------------------
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary

---------------------
-- terminal mode
---------------------
keymap.set("t", "<esc>", [[<C-\><C-n>]])
keymap.set("t", "jk", [[<C-\><C-n>]])
keymap.set("n", "<leader>te", "<cmd>belowright new<CR><cmd>terminal<CR>")

vim.api.nvim_create_autocmd({ "TermOpen" }, {
  pattern = "*",
  command = "startinsert",
})
