return  {
    'MagicDuck/grug-far.nvim',
    version="1.5.19",
    config = function()
      -- optional setup call to override plugin options
      -- alternatively you can set options with vim.g.grug_far = { ... }
      require('grug-far').setup({
        -- options, see Configuration section below
        -- there are no required options atm
        -- engine = 'ripgrep' is default, but 'astgrep' or 'astgrep-rules' can
        -- be specified
        vim.keymap.set('n', '<leader>g', ':GrugFar<CR>', { desc = 'Open Tree' }) 
      });
    end

  }
