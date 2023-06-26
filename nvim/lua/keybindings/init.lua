vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
local nnoremap_opts = {noremap = true, silent = true}

--- Split Pane Navigation
-- map('n', '<C-h>', '<C-w>h', nnoremap_opts)
-- map('n', '<C-j>', '<C-w>j', nnoremap_opts)
-- map('n', '<C-k>', '<C-w>k', nnoremap_opts)
-- map('n', '<C-l>', '<C-w>l', nnoremap_opts)

--- Telescope
map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', nnoremap_opts)
map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', nnoremap_opts)
map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', nnoremap_opts)
map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', nnoremap_opts)
