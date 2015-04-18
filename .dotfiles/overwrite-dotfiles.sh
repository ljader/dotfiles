#!/bin/bash

copy_src=..
user_home=~

echo "Overwritng dotfiles..."
rm -rf $user_home/.dotfiles

cp -fRv $copy_src/.dotfiles $user_home/.dotfiles
cp -fv $copy_src/.gitconfig $user_home
cp -fv $copy_src/.bashrc $user_home
