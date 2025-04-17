return {
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = { 'nvim-lua/plenary.nvim' },
	config = function()
		require('telescope').setup {
			defaults = {
				layout_strategy = "vertical",
				layout_config = {
					height = 0.95,
					width = 0.95
				},

			}
		}
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>f', builtin.find_files, { desc = 'Telescope find files' })
		vim.keymap.set('n', '<leader>b', builtin.buffers, { desc = 'Telescop find buffers' })
   -- 	vim.keymap.set('n', '<leader>g', function() builtin.grep_string({ 
   -- 		search = vim.fn.input("Grep > ")

   -- 	}) 
    --		end)
	end

}
