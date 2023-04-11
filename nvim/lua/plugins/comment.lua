return {
    "echasnovski/mini.comment",
    opts = {
        options = {
            -- Whether to ignore blank lines
            ignore_blank_line = true,
            -- Whether to recognize as comment only lines without indent
            start_of_line = false,
            -- Whether to ensure single space pad for comment parts
            pad_comment_parts = true,
        },
        mappings = {
            -- Toggle comment (like `gcip` - comment inner paragraph) for both Normal and Visual modes
            comment = "gc",
            -- Toggle comment on current line
            comment_line = "gcc",
            -- Define 'comment' textobject (like `dgc` - delete whole comment block)
            textobject = "gc",
        },
    },
}
