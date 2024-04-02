return {
  'nvim-neo-tree/neo-tree.nvim',
  branch = 'v3.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
    -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
  },
  config = function()
    require('neo-tree').setup {
      filesystem = {
        filtered_items = {
          visible = true,
        },
      },
    }
    vim.keymap.set('n', '<leader>nt', ':Neotree<cr>', { desc = '[N]eo [T]ree (opens neotree)' })
    vim.keymap.set('n', '<leader>nq', ':Neotree action=close<cr>', { desc = '[N]eo Tree [Q]uit (closes neotree)' })
  end,
}
