# README #


```
#!bash
cd ~
git clone --recursive git@bitbucket.org:ariedl/vim.git .vim
ls -s /home/{USER}/.vim/vimrc /home/{USER}/.vimrc
```

**OR**

```
#!bash
cd ~
git clone git@bitbucket.org:ariedl/vim.git .vim
cd .vim
git submodule update --init --recursive
ls -s /home/{USER}/.vim/vimrc /home/{USER}/.vimrc
```