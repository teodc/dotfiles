return {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
        {
            "<leader>fE",
            function()
                require("neo-tree.command").execute({ toggle = false, dir = require("lazyvim.util").get_root() })
            end,
            desc = "Explorer NeoTree (root dir)",
        },
        {
            "<leader>fe",
            function()
                require("neo-tree.command").execute({ toggle = false, dir = vim.loop.cwd() })
            end,
            desc = "Explorer NeoTree (cwd)",
        },
        { "<leader>E", "<leader>fE", desc = "Explorer NeoTree (root dir)", remap = true },
        { "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
    },
    opts = {
        follow_current_file = true,
        group_empty_dirs = false,
        filesystem = {
            filtered_items = {
                visible = true,
                hide_dotfiles = false,
                hide_gitignored = false,
            },
        },
    },
}
