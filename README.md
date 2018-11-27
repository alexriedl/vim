# Initialize Repository #
```
cd ~
git clone git@github.com:alexriedl/vim.git ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cd .vim
vim +BundleInstall +qall

cd bundle/vimproc.vim
make

sudo apt install editorconfig silversearcher-ag ctags

# Setup Omnisharp
# Setup Powerline fonts
# Setup Nerd fonts
```

## OmniSharp ##
1. Open a CS file and omnisharp server will be installed

## Fonts ##
1. Powerline:
2. Nerd Fonts: https://github.com/ryanoasis/nerd-fonts#font-installation<Paste>
	a) Extract to same directory powerline installed to: `~/.local/share/fonts`
3. Setup terminal to use font

neovim setup
```
sudo add-apt-repository ppa:neovim-ppa/stable # Use unstable if not on ubuntu 16.04
sudo apt update
sudo apt install neovim python-dev python-pip python3-dev python3-pip

mkdir ~/.config/nvim
ln -s /home/$USER/.vim/init.vim /home/$USER/.config/nvim/init.vim

# Default nvim instead of vi/vim
sudo update-alternatives --install /usr/bin/vi vi /usr/bin/nvim 60
sudo update-alternatives --config vi
sudo update-alternatives --install /usr/bin/vim vim /usr/bin/nvim 60
sudo update-alternatives --config vim

# Will need python setup for neovim: https://neovim.io/doc/user/provider.html#provider-python<Paste>
```


ON WINDOWS
```
cd %USERPROFILE%
git clone git@github.com:alexriedl/vim.git vimfiles
git clone https://github.com/VundleVim/Vundle.vim.git vimfiles/bundle/Vundle.vim
cd vimfiles
vim +BundleInstall +qall

cd bundle/vimproc.vim
mingw32-make -f make_mingw64.mak (or 32.mak)
```

Navigate to vim's install directory (C:\Program Files (x86)/vim) and update the _vimrc file. Comment out all source directives. Add a new source directive:
```
source C:\Users\$USERPROFILE\vimfiles\vimrc
```



## Languages ##
### Typescript ###
Must install checkers globally: `npm install -g typescript tslint`

