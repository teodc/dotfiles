return {
    "williamboman/mason.nvim",
    opts = {
        ensure_installed = {
            -- LSPs ------------------------------------------------------------
            "ansible-language-server",
            "bash-language-server",
            "css-lsp",
            "docker-compose-language-service",
            "dockerfile-language-server",
            "eslint-lsp",
            "gopls",
            "html-lsp",
            "json-lsp",
            "lua-language-server",
            "marksman",
            "nginx-language-server",
            "phpactor",
            "psalm",
            "pyright",
            "ruff-lsp",
            "spectral-language-server",
            "sqlls",
            "terraform-ls",
            "typescript-language-server",
            "yaml-language-server",

            -- DAPs ------------------------------------------------------------
            "go-debug-adapter",
            "php-debug-adapter",

            -- Linters ---------------------------------------------------------
            "actionlint",
            "ansible-lint",
            "cfn-lint",
            "hadolint",
            "jsonlint",
            "markdownlint",
            "mypy",
            "phpstan",
            "pylint",
            "revive",
            "ruff",
            "shellcheck",
            "stylelint",
            "tflint",
            "xo",
            "yamllint",

            -- Formatters ------------------------------------------------------
            "beautysh",
            "black",
            "fixjson",
            "gofumpt",
            "gomodifytags",
            "isort",
            "markdown-toc",
            "markdownlint",
            "php-cs-fixer",
            "pint",
            "prettierd",
            "shfmt",
            "sqlfmt",
            "stylua",
            "yamlfmt",
        },
    },
}
