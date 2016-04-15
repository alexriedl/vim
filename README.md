# README #


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

Update submodules by:

```
#!bash
git submodule foreach git pull origin master
```

Add Submodule:

```
#!bash
git submodule add <http path to project> bundles/vim-<project>
```

Remove Submodule:

```
#!bash
delete the relevant line from the .gitmodules file
delete the relevant section from .git/config
git rm --cached path_to_submodule (no trailing slash)
commit and delete the now untracked submodule files
```
