return {
    'mhartington/formatter.nvim',
    config = function()
        require("formatter").setup {
            filetype = {
                python = {
                    require("formatter.filetypes.python").black
                },
                ["*"] = {
                    require("formatter.filetypes.any").remove_trailing_whitespace,
                }
            }
        }
        vim.keymap.set('n', '<leader>c', ':Format<CR>', { desc = 'Format' }) -- clean

    end
}
