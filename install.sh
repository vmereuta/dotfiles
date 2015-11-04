#!/bin/bash

to_install=".inputrc .aliases .bash_profile  .bashrc .gitconfig .profile .screenrc  .vimrc"

set +x
this_dir=$(dirname $(readlink -f $0))

for f in ${to_install}; do
  rm -f $HOME/$f
  ln -s $this_dir/$f $HOME/$f
done
