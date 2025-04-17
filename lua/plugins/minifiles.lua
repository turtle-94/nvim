return {
    'echasnovski/mini.files',
    version = '*',
    config = function()
        require('mini.files').setup()
        vim.keymap.set('n', '<leader>e', ':lua MiniFiles.open()<CR>', { desc = 'Open MiniFiles' }) 
    end

}
