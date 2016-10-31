# Init Repository #
```
#!bash
cd ~
git clone --recursive git@bitbucket.org:{USER}/vim.git .vim
ls -s /home/{USER}/.vim/vimrc /home/{USER}/.vimrc
```

**OR**

```
#!bash
cd ~
git clone git@bitbucket.org:{USER}/vim.git .vim
cd .vim
git submodule update --init --recursive
ls -s /home/{USER}/.vim/vimrc /home/{USER}/.vimrc
```

# Update submodules #
```
#!bash
git submodule update --init --recursive
```

# Add Submodule #
```
#!bash
git submodule add <http path to project> bundle/vim-<project>
```

# Remove Submodule #
```
#!bash
delete the relevant line from the .gitmodules file
delete the relevant section from .git/config
git rm --cached path_to_submodule (no trailing slash)
commit and delete the now untracked submodule files
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
