# DotFiles

This is my personal dotfiles that I use to configure my system.

## Installation

Clone the repo to `~/Code/dotfiles` and create symbolic links as below

* `ln -s /Users/david/Code/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim`
* `ln -s /Users/david/code/dotfiles/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json`

## Dependencies

* neovim `brew install neovim`
* yarn `brew install yarn`
* VimPlug `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`
* Ctags `brew install ctags`
* NerdFont `brew tap homebrew/cask-fonts && brew install --cask font-fira-mono-nerd-font`

## Key Mappings

* Ctrl-A Code Action
* [g Previous Error
* ]g Next Error
* gd Goto Definition
* gy Goto Type Definition
* gi Goto Implementation
* gr Goto references
* ALT-Left Go backwards
* ALT-Right Go forwards
* K Show Documentation
* <Leader>rn Rename
* <Leader>f Format Selected
* Ctrl-O Show Files (fzf)
* F5 List Buffers
* Ctrl-J Previous Buffer
* Crtl-K Next Buffer
* <Leader>n Nerd Tree
* Ctrl-B Toggle Nerd Tree
* Ctrl-F Nerd Tree (Current File)
* Ctrl-E Display MRU
* F8 Show file Structure
