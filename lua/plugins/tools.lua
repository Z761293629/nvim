return {
    {
        -- 自动补全括号对 引号对
        "windwp/nvim-autopairs",
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
        config = function()
            require("neo-tree").setup()
            vim.keymap.set({"n","i"},"<leader>e",[[<cmd>Neotree toggle<CR>]])
        end
    },
    {
        "folke/which-key.nvim",
        event = "VeryLazy",
        init = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
        end,
        opts = {
            mode = "n",
        }
    },
    {
        "echasnovski/mini.comment",
        config =  true
    }
    
}
