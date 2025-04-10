return {
  { 'mhinz/vim-tree', lazy = false },
  -- ... more plugins ...
  vim.keymap.set('n', '<leader>t', ':Tree<CR>', { desc = 'Open Tree' })
}
