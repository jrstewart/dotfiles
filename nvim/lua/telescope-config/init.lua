local actions = require('telescope.actions')
local telescope = require('telescope')

telescope.setup {
  defaults = {
    color_devicons = true,
    file_ignore_patterns = {'_build', 'deps'},
    mappings = {
      i = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-q>'] = actions.smart_send_to_qflist + actions.open_qflist,
        ['<ESC>'] = actions.close,
        ['<CR>'] = actions.select_default + actions.center
      },
      n = {
        ['<C-j>'] = actions.move_selection_next,
        ['<C-k>'] = actions.move_selection_previous,
        ['<C-q>'] = actions.smart_send_to_qflist + actions.open_qflist,
      }
    },
    set_env = {['COLORTERM'] = 'truecolor'},
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = true,
      override_file_sorter = true,
      case_mode = "smart_case",
    }
  }
}

telescope.load_extension('fzf')
