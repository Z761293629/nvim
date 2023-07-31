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
        config = true
    },
    {
        "echasnovski/mini.comment",
        config =  true
    },
    {
        "numToStr/FTerm.nvim",
        config = function()
            require'FTerm'.setup({
            border = 'double',
            dimensions  = {
                height = 0.8,
                width = 0.6,
                },
            })

            -- Example keybindings
            vim.keymap.set('n', '<A-i>', '<CMD>lua require("FTerm").toggle()<CR>')
            vim.keymap.set('t', '<A-i>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
        end
    }
}
