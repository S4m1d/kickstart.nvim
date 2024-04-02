return {
  'akinsho/toggleterm.nvim',
  version = '*',
  config = function()
    -- we need to explicitly initialize this plugin
    require('toggleterm').setup {}
    vim.keymap.set('n', '<leader>t', ':ToggleTerm<cr>', { desc = 'Open [T]erminal' })
  end,
}
