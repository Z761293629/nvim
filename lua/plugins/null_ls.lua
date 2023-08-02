return {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        {
            "jay-babu/mason-null-ls.nvim",
        }
    },
    config = function()
        local tools = {
            "black",
        }
        require("mason-null-ls").setup({
            ensure_installed = tools,
            handlers = {},
        })
        require("null-ls").setup()
    end
}
