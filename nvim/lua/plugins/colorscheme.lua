return {
    -- Add colorschemes
    { "folke/tokyonight.nvim", lazy = true, opts = { style = "moon" } },
    { "ellisonleao/gruvbox.nvim", lazy = true },
    { "catppuccin/nvim", lazy = true, name = "catppuccin", opts = { flavour = "macchiato" } },

    -- Select colorscheme to load
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "catppuccin",
        },
    },
}
