-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
local function my_on_attach(bufnr)
  local api = require 'nvim-tree.api'

  local function opts(desc)
    return { desc = 'nvim-tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  -- default mappings
  api.config.mappings.default_on_attach(bufnr)

  -- custom mappings
  vim.keymap.set('n', '<C-t>', api.tree.change_root_to_parent, opts 'Up')
  vim.keymap.set('n', '?', api.tree.toggle_help, opts 'Help')
end

-- pass to setup along with your other options
require('nvim-tree').setup {
  ---
  on_attach = my_on_attach,
  ---
}

return {
  {
    'nvim-tree/nvim-tree.lua',
    opts = { on_attach = my_on_attach },
  },
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    build = ':Copilot auth',
    opts = {
      suggestion = { enabled = false },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
  -- vim-fugitive
  {
    'tpope/vim-fugitive',
    keys = {
      { '<leader>df', ':Gdiffsplit!<CR>', desc = 'Git diff split' },
      { '<leader>gs', ':G<CR>', desc = 'Git status' },
      { '<leader>gc', ':Commits<CR>', desc = 'Git commits' },
    },
  },
}
