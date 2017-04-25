# Initialize Repository #
```
cd ~
git clone git@github.com:alexriedl/vim.git .vim
git clone https://github.com/VundleVim/Vundle.vim.git .vim/bundle/Vundle.vim
cd .vim
vim +BundleInstall +qall

cd bundle/vimproc.vim
make
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

# Syntastic jshint setup #
(Assumes nodejs is installed)
```
# For legacy support, sym link node and nodejs
sudo ln -s /usr/bin/node{js,}

sudo npm install -g jshint
sudo npm install -g typescript
sudo npm install -g jshint
```
