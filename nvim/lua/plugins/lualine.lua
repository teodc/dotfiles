return {
    "nvim-lualine/lualine.nvim",
    opts = {
        options = {
            theme = "catppuccin",
            component_separators = { left = "", right = "" },
            -- component_separators = { left = "", right = "" },
            section_separators = { left = "", right = "" },
            -- section_separators = { left = "", right = "" },
        },
        sections = {
            lualine_y = {
                { "progress", padding = { left = 2, right = 2 } },
            },
            lualine_z = {
                { "location", padding = { left = 1, right = 2 } },
            },
        },
    },
}
