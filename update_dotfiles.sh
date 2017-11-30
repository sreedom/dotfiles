#!/bin/bash
set -x
# directories that are copied as is here
# no trailing slashes please
COPY_DIRS=(~/.config ~/.vim ~/.oh-my-zsh)
COPY_FILES_REL=(~/.zshrc ~/.vimrc ~/.bash_profile)

function update_dotfiles {
	# ideally this function should create dirs and put them with the same name here
	# big TODO important for installing dotfiles

	mkdir -p .local/share/
	cp -r ~/.local/share/nvim .local/share/
	for dir in ${COPY_DIRS[*]}
	do
		cp -r $dir .
	done

	for fil in ${COPY_FILES_REL[*]}
	do
		cp $fil .
	done
	# remove the .git folders for sub-modules
	find . -mindepth 2 -type d -name ".git*" | xargs rm -rf
}

update_dotfiles && echo "dotfiles updated. dont forget to git add new dotfiles and remove any .git in the subfolders"

