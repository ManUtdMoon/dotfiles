#!/bin/zsh

# add ~/dotfiles
dotfiles_dir=~/dotfiles

# for loop for all files in dotfiles
for file in $(ls -A $dotfiles_dir); do
    # skip .git and autolink.sh
    if [ "$file" = ".git" ] || [ "$file" = "autolink.sh" ]; then
        continue
    fi
    # delete existing file
    if [ -e ~/$file ]; then
        rm ~/$file
    fi
    # create soft link
    ln -s $dotfiles_dir/$file ~/$file
done
