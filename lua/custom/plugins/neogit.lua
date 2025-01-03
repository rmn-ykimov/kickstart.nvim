return {
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'sindrets/diffview.nvim',
      'nvim-telescope/telescope.nvim',
      -- 'ibhagwan/fzf-lua',
    },
    config = function()
      local neogit = require 'neogit'

      neogit.setup {}

      -- Keymap settings
      vim.keymap.set('n', '<leader>gs', neogit.open, { silent = true, noremap = true, desc = 'Open Neogit status' })
      vim.keymap.set('n', '<leader>gc', ':Neogit commit<CR>', { silent = true, noremap = true, desc = 'Neogit commit' })
      vim.keymap.set('n', '<leader>gp', ':Neogit pull<CR>', { silent = true, noremap = true, desc = 'Neogit pull' })
      vim.keymap.set('n', '<leader>gP', ':Neogit push<CR>', { silent = true, noremap = true, desc = 'Neogit push' })
      vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { silent = true, noremap = true, desc = 'Telescope git branches' })
      vim.keymap.set('n', '<leader>gB', ':G blame<CR>', { silent = true, noremap = true, desc = 'Git blame' })
      
    end,
  },
}
