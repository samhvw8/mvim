-- npm install -g yaml-language-server
require'lspconfig'.yamlls.setup {
    cmd = {DATA_PATH .. "/lspinstall/yaml/node_modules/.bin/yaml-language-server", "--stdio"},
    on_attach = require'lsp'.common_on_attach,
    settings = {
        yaml = {
            schemas = {
                ["http://json.schemastore.org/circleciconfig"] = "/.circleci/config.yml",
                ["http://json.schemastore.org/huskyrc"] = "/.huskyrc.yml",
                ["http://json.schemastore.org/travis"] = "/.travis.yml",
                ["http://json.schemastore.org/stylelintrc"] = "/.stylelintrc.yml",
                ["http://json.schemastore.org/eslintrc"] = "/.eslintrc.yml",
                ["http://json.schemastore.org/gitlab-ci"] = "/.gitlab-ci.yml",
                ["http://json.schemastore.org/prettierrc"] = "/.prettierrc.yml",
                ["http://json.schemastore.org/ansible-stable-2.7"] = "/playbook/**/*.y*ml",
                ["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "docker-compose*.y*ml"
            }
        }
    }
}
