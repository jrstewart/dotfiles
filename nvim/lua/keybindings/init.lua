vim.g.mapleader = ' '

local map = vim.api.nvim_set_keymap
local nnoremap_opts = {noremap = true, silent = true}

--- Split Pane Navigation
map('n', '<C-h>', '<C-w>h', {noremap = true, silent = true})
map('n', '<C-j>', '<C-w>j', {noremap = true, silent = true})
map('n', '<C-k>', '<C-w>k', {noremap = true, silent = true})
map('n', '<C-l>', '<C-w>l', {noremap = true, silent = true})

--- Telescope
local opts = {noremap = true, silent = true}
map('n', '<leader>ff', '<cmd>lua require("telescope.builtin").find_files()<CR>', opts)
map('n', '<leader>fg', '<cmd>lua require("telescope.builtin").live_grep()<CR>', opts)
map('n', '<leader>fb', '<cmd>lua require("telescope.builtin").buffers()<CR>', opts)
map('n', '<leader>fh', '<cmd>lua require("telescope.builtin").help_tags()<CR>', opts)
