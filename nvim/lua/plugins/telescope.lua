return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
            require("telescope").setup({
                extensions = {
                    fzf = {
                        fuzzy = true,
                        case_mode = "smart_case",
                    },
                },
            })
            require("telescope").load_extension("fzf")
        end,
    },
    keys = {
        { "<leader>sx", require("telescope.builtin").resume, desc = "Resume" },
        { "<leader>sl", require("telescope").extensions.notify.notify, desc = "Show notification logs" },
    },
}
