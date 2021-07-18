--[[
O is the global options object
Linters should be
filled in as strings with either
a global executable or a path to
an executable
]] -- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT
-- general
O.format_on_save = true
O.completion.autocomplete = true
O.colorscheme = "dracula"
O.auto_close_tree = 0
O.default_options.wrap = true
O.default_options.timeoutlen = 100
O.leader_key = " "
O.ignore_case = true
O.smart_case = true

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
O.plugin.dashboard.active = true
O.plugin.telescope = {todo = {keywords = {"TODO", "FIXME", "XXX"}}}

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "maintained"
O.treesitter.ignore_install = {"haskell"}
O.treesitter.highlight.enabled = true

-- python
-- O.lang.python.linter = 'flake8'
O.lang.python.isort = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.analysis.use_library_code_types = true

-- javascript
O.lang.tsserver.linter = nil

-- if you don't want all the parsers change this to a table of the ones you want
O.treesitter.ensure_installed = "all"
O.treesitter.ignore_install = {"haskell"}
O.treesitter.highlight.enabled = true

O.lang.clang.diagnostics.virtual_text = false
O.lang.clang.diagnostics.signs = false
O.lang.clang.diagnostics.underline = false

-- python
-- add things like O.python.formatter.yapf.exec_path
-- add things like O.python.linter.flake8.exec_path
-- add things like O.python.formatter.isort.exec_path
O.lang.python.formatter = "yapf"
-- O.python.linter = 'flake8'
O.lang.python.isort = true
O.lang.python.autoformat = true
O.lang.python.diagnostics.virtual_text = true
O.lang.python.diagnostics.signs = true
O.lang.python.diagnostics.underline = true
O.lang.python.analysis.type_checking = "off"
O.lang.python.analysis.auto_search_paths = true
O.lang.python.analysis.use_library_code_types = true

-- create custom autocommand field (This would be easy with lua)
