## Clipboard Support

- On Mac `pbcopy` should be built-in

- Ubuntu

    ```bash
    sudo apt install xclip
    ```

- Arch

    ```bash
    sudo pacman -S xclip
    ```

- WSL2

    Make sure ~/bin is in your path in this case.
    
    ```bash
    curl -sLo/tmp/win32yank.zip https://github.com/equalsraf/win32yank/releases/download/v0.0.4/win32yank-x64.zip
    unzip -p /tmp/win32yank.zip win32yank.exe > /tmp/win32yank.exe
    chmod +x /tmp/win32yank.exe
    mv /tmp/win32yank.exe ~/bin
    ```

## LSP

To install a supported language server:

``` bash
  :LspInstall <your_language_server>
```

Most common languages should be supported out of the box, if yours is not I would welcome a PR

For a more in depth LSP support:
[link](https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md)

## Useful Programs

Depends on the following:

``` bash
ranger
ueberzug
ripgrep
pynvim
neovim-remote
```

## EFM server

In order for linters and formatters to work you will need to install
`efm-langserver`

```vim
:LspInstall efm
```

## Formatters and Linters

**Python**

``` bash
pip3 install --user flake8
pip3 install --user yapf
```

**Lua**

``` bash
luarocks install --server=https://luarocks.org/dev luaformatter
```

**Yaml, Json, Javascript, HTML, CSS**

``` bash
npm install -g prettier
```

**Markdown**

``` bash
pandoc
```

## De-bugging

To set up your particular debugger, look here:
[link](https://github.com/mfussenegger/nvim-dap/wiki/Debug-Adapter-installation)

## TODO

**HIGH PRIORITY**

- Move user config into `config.lua` ts-comment string for react
- From here I will update for bug fixes and implement low priority
features when I have time
- different key to advance through snippets


**LOW PRIORITY**

- vim vsnips dir should be co-located with config
- list all binaries needed for formatters and linters (one day add in wiki)
- Implement what I can from this java config:
  [link](https://github.com/mfussenegger/nvim-jdtls/wiki/Sample-Configurations)
  - better ui for code actions - formatting
  - setup junit tests for java
- look into emmet-ls
- vim ult test
- which-key all in lua
- what is `fzy`
- https://github.com/pwntester/octo.nvim
- configure surround
- Implement this for typescript https://github.com/jose-elias-alvarez/nvim-lsp-ts-utils
- look into tabnine


**PLUGIN BUGS**

REACT COMMENTING IS A NIGHTMARE (the filetype is just not recognized idk why)
