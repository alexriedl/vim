# Initialize Repository #
```
cd ~
git clone git@github.com:alexriedl/vim.git ~/.vim
vim +PlugInstall +qall

sudo apt install editorconfig silversearcher-ag ctags lua5.1 lua5.1-dev unzip libuv1-dev
# silversearcher is used by ctrlp
# libuv1-dev is required for omnisharp

# Bash Language Server:
npm i -g bash-language-server

# For typescript
npm i -g typescript tslint

# TODO: Setup Powerline fonts
# TODO: Setup Nerd fonts
```

## Fonts ##
1. Powerline:
2. Nerd Fonts: https://github.com/ryanoasis/nerd-fonts#font-installation<Paste>
	a) Extract to same directory powerline installed to: `~/.local/share/fonts`
3. Setup terminal to use font

neovim setup
```
sudo add-apt-repository ppa:neovim-ppa/unstable # Use unstable until popup window is merged to stable
sudo apt update
sudo apt install neovim python-dev python-pip python3-dev python3-pip

mkdir ~/.config/nvim
ln -s /home/$USER/.vim/init.vim /home/$USER/.config/nvim/init.vim

# Default nvim instead of vi/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim

# Will need python setup for neovim: https://neovim.io/doc/user/provider.html#provider-python
```
ON WINDOWS
```
cd %USERPROFILE%
git clone git@github.com:alexriedl/vim.git vimfiles
vim +PlugInstall +qall
```

Navigate to vim's install directory (C:\Program Files (x86)/vim) and update the _vimrc file. Comment out all source directives. Add a new source directive:
```
source C:\Users\$USERPROFILE\vimfiles\vimrc
```
