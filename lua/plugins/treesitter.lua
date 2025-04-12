return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = {
                "c",
                "lua",
                "vim", 
                "vimdoc",
                "query",
                "elixir",
                "heex",
                "javascript",
                "html", 
                "python",
                "css",
                "jinja",
                "yaml",
                "kdl",
                "bash",
            },
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true },  
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<leader>ss", -- start select
                    node_incremental = "<leader>se", -- select expand
                    scope_incremental = "<leader>sc", -- select scope
                    node_decremental = "<leader>sd", -- select decrease
                },
            },
        })
    end
}
