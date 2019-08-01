# Initialize Repository #
```
cd ~
git clone git@github.com:alexriedl/vim.git ~/.vim
vim +PlugInstall +qall

sudo apt install editorconfig silversearcher-ag ctags lua5.1 lua5.1-dev unzip libuv1-dev
# silversearcher is used by ctrlp
# libuv1-dev is required for omnisharp

# Language Servers:
npm install -g bash-language-server vim-language-server

# For typescript
npm i -g typescript tslint

# TODO: Setup Powerline fonts
# TODO: Setup Nerd fonts
```


## Fonts ##
1. Powerline:
2. Nerd Fonts: This was only used in nerdtree
  a) https://github.com/ryanoasis/nerd-fonts#font-installation<Paste>
  b) Extract to same directory powerline installed to: `~/.local/share/fonts`
3. Setup terminal to use font

# Neovim Setup #
```
sudo add-apt-repository ppa:neovim-ppa/unstable # Use unstable until popup window is merged to stable (4.0)
sudo apt update
sudo apt install neovim python-dev python-pip python3-dev python3-pip

mkdir ~/.config/nvim
ln -s /home/$USER/.vim/init.vim /home/$USER/.config/nvim/init.vim
ln -s /home/$USER/.vim/coc-settings.json /home/$USER/.config/nvim/coc-settings.json

# Default nvim instead of vi/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim

# Will need python setup for neovim: https://neovim.io/doc/user/provider.html#provider-python
```

# On Windows #
This has not been tested in multiple years. Will still need global packages installs like above for everything to still work
```
cd %USERPROFILE%
git clone git@github.com:alexriedl/vim.git vimfiles
vim +PlugInstall +qall
```

The windows install adds a bunch of extra settings for you. And now we have to go and turn those off because they break things. Also by default your ~/vimfiles/vimrc is not sourced by default.

Navigate to vim's install directory (C:\Program Files (x86)/vim) and update the _vimrc file. Delete all source directives. Add a new source directive:
```
source C:\Users\$USERPROFILE\vimfiles\vimrc
```
