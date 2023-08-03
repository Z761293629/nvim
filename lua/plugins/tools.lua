return {
    {
        -- 自动补全括号对 引号对
        "windwp/nvim-autopairs",
        event = "VeryLazy",
        opts = {}
    },
    {
        -- 文件树
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
        },
        keys = {
            { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Open the neo-tree", mode = { "n", "v" } }
        },
        config = true
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        config = true
    },
    {
        "echasnovski/mini.comment",
        event = "VeryLazy",
        config = true
    },
    {
        "folke/flash.nvim",
        event = "VeryLazy",
        opts = {},
        keys = {
            { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" },
            {
                "S",
                mode = { "n", "o", "x" },
                function() require("flash").treesitter() end,
                desc =
                "Flash Treesitter"
            },
            {
                "r",
                mode = "o",
                function() require("flash").remote() end,
                desc =
                "Remote Flash"
            },
            {
                "R",
                mode = { "o", "x" },
                function() require("flash").treesitter_search() end,
                desc =
                "Treesitter Search"
            },
            {
                "<c-s>",
                mode = { "c" },
                function() require("flash").toggle() end,
                desc =
                "Toggle Flash Search"
            },
        },
    },
    {
        "numToStr/FTerm.nvim",
        keys = {
            { "<A-i>", "<cmd>lua require('FTerm').toggle()<CR>",            mode = { 'n' } },
            { "<A-i>", "<C-\\><C-n><CMD>lua require('FTerm').toggle()<CR>", mode = { "t" } }
        },
        config = function()
            require 'FTerm'.setup({
                border     = 'double',
                dimensions = {
                    height = 0.8,
                    width = 0.6,
                },
            })
        end
    },
    {
        "s1n7ax/nvim-window-picker",
        event = "VeryLazy",
        config = function()
            require("window-picker").setup({
                filter_rules = {
                    include_current_win = true,
                    bo = {
                        filetype = { "fidget", "neo-tree" }
                    }
                }
            })
            vim.keymap.set("n",
                "<c-w>p",
                function()
                    local window_number = require('window-picker').pick_window()
                    if window_number then vim.api.nvim_set_current_win(window_number) end
                end
            )
        end
    },
}
