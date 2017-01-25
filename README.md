# Initialize Repository #
```
git clone git@github.com:alexriedl/vim.git ~/.vim
cd ~/.vim
git submodule update --init --recursive
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +BundleInstall +qall
```

# Syntastic jshint setup #
(Assumes nodejs is installed)
```
sudo npm install -g jshint
# For legacy support, sym link node and nodejs
sudo ln -s /usr/bin/node{js,}
```

# Haskell Setup #
(Assumes ghc and stack are installed)
```
cd bundles/vim-proc
make
```

# You Complete Me #
View https://github.com/Valloric/YouCompleteMe for more information.
There ARE dependencies that need to be installed on the machine for the following command to complete
```
./install.py --clang-completer --tern-completer --omnisharp-completer
```
* omnisharp requires mono on linux and msbuild on windows
