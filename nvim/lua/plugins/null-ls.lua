return {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
        local nls = require("null-ls")
        opts.sources = {
            -- Code actions ----------------------------------------------------
            nls.builtins.code_actions.gitsigns,
            nls.builtins.code_actions.gomodifytags, -- go
            nls.builtins.code_actions.impl, -- go
            nls.builtins.code_actions.refactoring, -- go, javascript, lua, python, typescript, PHP
            nls.builtins.code_actions.shellcheck, -- sh
            nls.builtins.code_actions.xo, -- javascript, javascriptreact, typescript, typescriptreact

            -- Diagnostics -----------------------------------------------------
            nls.builtins.diagnostics.actionlint, -- yaml
            nls.builtins.diagnostics.ansiblelint, -- yaml.ansible
            nls.builtins.diagnostics.cfn_lint, -- yaml, json
            nls.builtins.diagnostics.checkmake, -- make
            nls.builtins.diagnostics.dotenv_linter, -- sh
            --nls.builtins.diagnostics.eslint_d, -- javascript, javascriptreact, typescript, typescriptreact, vue
            nls.builtins.diagnostics.hadolint, -- dockerfile
            nls.builtins.diagnostics.jsonlint, -- json
            nls.builtins.diagnostics.luacheck, -- lua
            nls.builtins.diagnostics.markdownlint, -- markdown
            nls.builtins.diagnostics.markuplint, -- html
            --nls.builtins.diagnostics.mypy, -- python
            --nls.builtins.diagnostics.php, -- php
            nls.builtins.diagnostics.phpstan, -- php
            nls.builtins.diagnostics.psalm, -- php
            --nls.builtins.diagnostics.pylint, -- python
            nls.builtins.diagnostics.revive, -- go
            nls.builtins.diagnostics.ruff, -- python
            nls.builtins.diagnostics.shellcheck, -- sh
            nls.builtins.diagnostics.spectral, -- yaml, json
            nls.builtins.diagnostics.stylelint, -- scss, less, css, sass
            nls.builtins.diagnostics.terraform_validate, -- terraform
            nls.builtins.diagnostics.tsc, -- typescript, typescriptreact
            nls.builtins.diagnostics.xo, -- javascript, javascriptreact, typescript, typescriptreact
            nls.builtins.diagnostics.yamllint, -- yaml

            -- Formatting ------------------------------------------------------
            nls.builtins.formatting.beautysh, -- bash, csh, ksh, sh, zsh
            --nls.builtins.formatting.black, -- python
            --nls.builtins.formatting.fixjson, -- json
            nls.builtins.formatting.gofumpt, -- go
            --nls.builtins.formatting.isort, -- python
            nls.builtins.formatting.markdownlint, -- markdown
            nls.builtins.formatting.markdown_toc, -- markdown
            nls.builtins.formatting.nginx_beautifier, -- nginx
            nls.builtins.formatting.phpcsfixer, -- php
            --nls.builtins.formatting.pint, -- php
            nls.builtins.formatting.prettierd, -- javascript, javascriptreact, typescript, typescriptreact, vue, css, scss, less, html, json, jsonc, yaml, markdown, markdown.mdx, graphql, handlebars
            nls.builtins.formatting.ruff, -- python
            --nls.builtins.formatting.shfmt, -- sh
            nls.builtins.formatting.sqlfmt, -- sql
            nls.builtins.formatting.stylelint, -- scss, less, css, sass
            nls.builtins.formatting.stylua, -- lua, luau
            nls.builtins.formatting.terraform_fmt, -- terraform, tf, terraform-vars
            nls.builtins.formatting.trim_newlines,
            nls.builtins.formatting.trim_whitespace,
            --nls.builtins.formatting.yamlfmt, -- yaml
        }
    end,
}
