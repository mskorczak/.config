return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    keys = {
        {
            "<leader>?",
            function()
                require("which-key").show({ global = false })
            end,
            desc = "Buffer Local Keymaps (which-key)",
        },
    },
    config = function()
        local wk = require("which-key")
        wk.add({
            {
                mode = "n",
                {
                    group = "search",
                    { "<leader>pF", desc = "search files" },
                    { "<leader>pf", desc = "search git" },
                    { "<leader>ps", desc = "launch grep" },
                    { "<leader>pw", desc = "search word" },
                    { "<leader>pW", desc = "search exact word" },
                    { "<leader>vh", desc = "search help tags" },
                },
                {
                    group = "errors",
                    { "<leader>tt", desc = "toggle errors" },
                    { "<leader>t]", desc = "next error" },
                    { "<leader>t[", desc = "previous error" },
                },
                {
                    group = "git",
                    { "<leader>gs", desc = "git status" },
                },
                {
                    group = "lsp",
                    { "<leader>c",  desc = "lsp confirm" },
                    { "<leader>[",  desc = "lsp prev" },
                    { "<leader>]",  desc = "lsp next" },
                    { "<leader>l ", desc = "lsp complete" },
                },
                { "<leader>ex", desc = "explore" },
                { "<leader>f", desc = "format file" },
                { "<leader>vpp", desc = "open nvim config" },
            }
        })
    end
}
