return {
  'renerocksai/telekasten.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('telekasten').setup {
      home = vim.fn.expand '~/notes',
    }
    vim.keymap.set('n', '<leader>zf', '<cmd>Telekasten find_notes<CR>')
    vim.keymap.set('n', '<leader>zg', '<cmd>Telekasten search_notes<CR>')

    vim.keymap.set('n', '<leader>zc', '<cmd>Telekasten show_calendar<CR>')

    vim.keymap.set('n', '<M-t>', '<cmd>Telekasten toggle_todo<CR>')
  end,
}
