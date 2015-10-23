#!/bin/bash

to_install=".bash_profile  .bashrc  .git .gitconfig .profile .screenrc  .vimrc"

set +x
this_dir=$(dirname $(readlink -f $0))

for f in ${to_install}; do
  rm -f $HOME/$f
  ln -s $this_dir/$f $HOME/$f
done