
return {
  'romgrk/barbar.nvim',
  dependencies = {
    'lewis6991/gitsigns.nvim',
    'nvim-tree/nvim-web-devicons',
  },
  init = function()
    vim.g.barbar_auto_setup = false
    local map = vim.api.nvim_set_keymap
    local opts = { noremap = true, silent = true }
    map('n', '<Tab>', ':BufferNext<CR>', opts)
    map('n', '<S-Tab>', ':BufferPrevious<CR>', opts)
    -- Changed from <leader>bc to <leader>bd (consistent with keymaps.lua)
    map('n', '<leader>bd', ':BufferClose<CR>', opts)
  end,
  opts = {
    sidebar_filetypes = {
      ['neo-tree'] = { event = 'BufWipeout' }
    }
  },
  version = '^1.0.0',
}
