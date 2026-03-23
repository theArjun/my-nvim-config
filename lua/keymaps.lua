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

-- ============================================================================
-- Productivity & Navigation Keymaps
-- ============================================================================

-- Quick navigation: Jump to start/end of line
set({'n', 'v'}, 'H', '^', { noremap = true, silent = true, desc = 'Jump to start of line' })
set({'n', 'v'}, 'L', '$', { noremap = true, silent = true, desc = 'Jump to end of line' })

-- Smarter line movements (visual line vs actual line)
set('n', 'j', 'gj', { noremap = true, silent = true, desc = 'Move down (visual line)' })
set('n', 'k', 'gk', { noremap = true, silent = true, desc = 'Move up (visual line)' })
set('n', 'gj', 'j', { noremap = true, silent = true, desc = 'Move down (actual line)' })
set('n', 'gk', 'k', { noremap = true, silent = true, desc = 'Move up (actual line)' })

-- Move lines up/down
set('n', '<A-j>', ':m .+1<CR>==', { noremap = true, silent = true, desc = 'Move line down' })
set('n', '<A-k>', ':m .-2<CR>==', { noremap = true, silent = true, desc = 'Move line up' })
set('v', '<A-j>', ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selection down' })
set('v', '<A-k>', ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = 'Move selection up' })

-- Indent/Dedent
set('n', '<Tab>', '>>_', { noremap = true, silent = true, desc = 'Indent line' })
set('n', '<S-Tab>', '<<_', { noremap = true, silent = true, desc = 'Dedent line' })
set('v', '<Tab>', '>gv', { noremap = true, silent = true, desc = 'Indent selection' })
set('v', '<S-Tab>', '<gv', { noremap = true, silent = true, desc = 'Dedent selection' })

-- Better search
set('n', '/', '/\\v', { noremap = true, silent = true, desc = 'Search (regex)' })
set('n', '?', '?\\v', { noremap = true, silent = true, desc = 'Reverse search (regex)' })

-- Clear search highlight
set('n', '<Esc>', ':noh<CR>', { noremap = true, silent = true, desc = 'Clear search highlight' })

-- Better undo/redo
set('n', '<C-z>', ':undo<CR>', { noremap = true, silent = true, desc = 'Undo' })
set('n', '<C-y>', ':redo<CR>', { noremap = true, silent = true, desc = 'Redo' })

-- Select all
set('n', '<C-a>', 'ggVG', { noremap = true, silent = true, desc = 'Select all' })

-- Quick duplicate line
set('n', '<leader>yy', ':copy .<CR>', { noremap = true, silent = true, desc = 'Duplicate line' })
set('v', '<leader>yy', ':copy \'><CR>', { noremap = true, silent = true, desc = 'Duplicate selection' })

-- Delete without affecting clipboard
set({'n', 'v'}, '<leader>d', '"_d', { noremap = true, silent = true, desc = 'Delete (no clipboard)' })

-- Paste in visual mode without changing clipboard
set('v', 'p', '"_dP', { noremap = true, silent = true, desc = 'Paste without clipboard change' })

-- Better word selection
set('n', '<leader>w', 'viw', { noremap = true, silent = true, desc = 'Select word' })

-- Quick find and replace on current line
set('n', '<leader>sr', ':.s///g<Left><Left><Left>', { noremap = true, silent = true, desc = 'Replace on line' })
set('v', '<leader>sr', ':s///g<Left><Left><Left>', { noremap = true, silent = true, desc = 'Replace in selection' })

-- Join lines
set('n', 'J', 'mzJ`z', { noremap = true, silent = true, desc = 'Join lines' })

-- Create new line above/below
set('n', '<leader>O', 'O<Esc>j', { noremap = true, silent = true, desc = 'Create line above' })
set('n', '<leader>o', 'o<Esc>k', { noremap = true, silent = true, desc = 'Create line below' })

-- Better scrolling (keep cursor centered)
set('n', '<C-d>', '<C-d>zz', { noremap = true, silent = true, desc = 'Scroll down (centered)' })
set('n', '<C-u>', '<C-u>zz', { noremap = true, silent = true, desc = 'Scroll up (centered)' })
set('n', 'n', 'nzz', { noremap = true, silent = true, desc = 'Next match (centered)' })
set('n', 'N', 'Nzz', { noremap = true, silent = true, desc = 'Previous match (centered)' })

-- Fast command mode
set('n', ';', ':', { noremap = true, silent = true, desc = 'Command mode' })

-- Faster escape
set('i', 'jk', '<Esc>', { noremap = true, silent = true, desc = 'Exit insert mode' })
set('i', 'kj', '<Esc>', { noremap = true, silent = true, desc = 'Exit insert mode' })

-- Smart Home/End key
set('n', '<Home>', 'g^', { noremap = true, silent = true, desc = 'Smart home' })
set('n', '<End>', 'g$', { noremap = true, silent = true, desc = 'Smart end' })

-- Quick marks
set('n', '<leader>m1', "m1", { noremap = true, silent = true, desc = 'Set mark 1' })
set('n', '<leader>m2', "m2", { noremap = true, silent = true, desc = 'Set mark 2' })
set('n', '<leader>m3', "m3", { noremap = true, silent = true, desc = 'Set mark 3' })
set('n', "<leader>'1", "'1", { noremap = true, silent = true, desc = 'Jump to mark 1' })
set('n', "<leader>'2", "'2", { noremap = true, silent = true, desc = 'Jump to mark 2' })
set('n', "<leader>'3", "'3", { noremap = true, silent = true, desc = 'Jump to mark 3' })

