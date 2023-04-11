return {
    "echasnovski/mini.indentscope",
    opts = {
        -- symbol = "▏",
        symbol = "│",
        options = {
            border = "both",
            indent_at_cursor = true,
            try_as_border = true,
        },
        draw = {
            delay = 100,
            animation = require("mini.indentscope").gen_animation.none(),
            priority = 2,
        },
    },
    config = function(_, opts)
        require("mini.indentscope").setup(opts)
    end,
}
