# README #


```
#!bash
cd ~
git clone --recursive git@bitbucket.org:ariedl/vim.git .vim
cd .vim

```

**OR**

```
#!bash
git clone git@bitbucket.org:ariedl/vim.git .vim
cd .vim
git submodule update --init --recursive
```

**THEN**

```
#!bash
ls -s /home/{USER}/.vim/vimrc /home/{USER}/.vimrc
```