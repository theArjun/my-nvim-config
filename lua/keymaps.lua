local set = vim.keymap.set

-- Splits
set('n', '<leader>hs', ':split<CR>', { noremap = true, silent = true, desc = 'Horizontal Split' })
set('n', '<leader>vs', ':vsplit<CR>', { noremap = true, silent = true, desc = 'Vertical Split' })

-- Switch between splits with Ctrl + h/j/k/l
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })

-- Buffer Close with confirmation (prevent accidental closes)
-- Use <leader>bd to close buffer (similar to many editors)
set('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true, desc = 'Close current buffer' })

-- Save file
set('n', '<C-s>', ':w<CR>', { noremap = true, silent = true, desc = 'Save file' })

-- Copy file paths to clipboard
set('n', '<leader>cp', function()
  local filepath = vim.fn.expand('%')
  vim.fn.setreg('+', filepath)
  vim.notify('Copied: ' .. filepath, vim.log.levels.INFO)
end, { noremap = true, silent = true, desc = 'Copy relative file path' })

set('n', '<leader>cP', function()
  local filepath = vim.fn.expand('%:p')
  vim.fn.setreg('+', filepath)
  vim.notify('Copied: ' .. filepath, vim.log.levels.INFO)
end, { noremap = true, silent = true, desc = 'Copy absolute file path' })

