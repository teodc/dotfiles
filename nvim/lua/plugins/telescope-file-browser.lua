return {
    "nvim-telescope/telescope-file-browser.nvim",
    config = function()
        require("telescope").setup({
            extensions = {
                file_browser = {
                    hidden = true,
                    hide_parent_dir = false,
                    hijack_netrw = true,
                },
            },
        })
        require("telescope").load_extension("file_browser")
    end,
    keys = {
        {
            "<leader>se",
            ":Telescope file_browser path=%:p:h=%:p:h<cr>",
            desc = "Browse Files",
        },
    },
}
