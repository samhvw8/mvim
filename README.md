# install

git clone https://github.com/samhvw8/mvim.git ~/.config/nvim

## Install on MacOS

```bash
brew install neovim

pip install  pynvim

brew install ripgrep
brew install fzf bat fd

pip install jedi
```

fd: https://github.com/sharkdp/fd  
fzf: https://github.com/junegunn/fzf  
bat: https://github.com/sharkdp/bat
ripgrep: https://github.com/BurntSushi/ripgrep

Note: fzf preview need check bat theme

## file .bashrc or .zshrc

```bash
alias vim="nvim"
```

## In Vim

Run command `:PlugInstall`
