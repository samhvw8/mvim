# install

git clone https://github.com/samhvw8/.mvim.git ~/.mvim

## Install on MacOS

```bash
brew install neovim ag

pip install  pynvim
```
## file .vimrc or init.vim

``` bash
set runtimepath+=~/.mvim

source ~/.mvim/vimrcs/basic.vim
source ~/.mvim/vimrcs/filetypes.vim
source ~/.mvim/vimrcs/plugins_config.vim
source ~/.mvim/vimrcs/extended.vim

```

## file .bashrc or .zshrc

``` bash
alias vim="nvim"
```

## In Vim

Run command `:PlugInstall`