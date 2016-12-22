# Initialize Repository #
1. Clone to ~/.vim
2. Run ./m.sh update

Run help on manager script for more information about commands:
```
./m.sh help
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
