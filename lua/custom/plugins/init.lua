-- vim-fugitive
  {
    'tpope/vim-fugitive',
    keys = {
      { '<leader>df', ':Gdiffsplit!<CR>', desc = 'Git diff split' },
      { '<leader>gs', ':G<CR>', desc = 'Git status' },
      { '<leader>gc', ':Commits<CR>', desc = 'Git commits' },
    },
  },
  -- Neo tree
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      '3rd/image.nvim', -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    opts = {
      window = {
        fuzzy_finder_mappings = { -- define keymaps for filter popup window in fuzzy_finder_mode
          ['<C-j>'] = 'move_cursor_down',
          ['<C-k>'] = 'move_cursor_up',
        },
      },
    },
  },
