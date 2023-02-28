# DotFiles

This is my personal dotfiles that I use to configure my system.

## Installation

Clone the repo to `~/Code/dotfiles` and create symbolic links as below

* `ln -s /home/david/Code/dotfiles/.config/nvim/init.vim ~/.config/nvim/init.vim`
* `ln -s /home/david/Code/dotfiles/.config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json`
* `ln -s /home/david/Code/dotfiles/.config/alacritty/alacritty.yml ~/.config/alacritty/alacritty.yml`

## Dependencies

```
yay zsh
yay -Syu neovim
yay -Syu ttf-victor-mono-nerd
npm i -g neovim
yay -Syu ripgrep
yay -Syu fd
yay -Syu xclip
yay -Syu zsh-syntax-highlighting
yay -Syu zsh-autosuggestions
yay -Syu alacritty
yay -Syu picom
yay -Syu google-chrome
yay -R firefox
yay -Syu ctags

* VimPlug `sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'`

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
