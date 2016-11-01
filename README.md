# Init Repository #
```
#!bash
cd ~
git clone --recursive git@bitbucket.org:{USER}/vim.git .vim
cd .vim
./m.sh update
```

Run help on manager script for more information about commands:
```
#!bash
./m.sh --help
```

# Syntastic jshint setup #
(Assumes nodejs is installed)
```
#!bash
sudo npm install -g jshint
sudo ln -s /usr/bin/node{js,}
```

# Haskell Setup #
(Assumes ghc and stack are installed)
```
#!bash
cd bundles/vim-proc
make
```

# You Complete Me #
View https://github.com/Valloric/YouCompleteMe for more information.
There ARE dependencies that need to be installed on the machine for the following command to complete
```
#!bash
./install.py --clang-completer --tern-completer
```
