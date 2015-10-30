#!/usr/bin/env bash

cd "$(dirname "${BASH_SOURCE}")";

git pull origin master;

function setup() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude ".idea/" --exclude "install.sh" \
		--exclude "README.md" --exclude "LICENSE-MIT.txt" --exclude "screen.jpg" -avh --no-perms . ~;
	echo 'source ~/.bash_profile' >> ~/.bash_profile;
	source ~/.bash_profile;
}

if [ "$1" == "--force" -o "$1" == "-f" ]; then
	setup;
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1;
	echo "";
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		setup;
	fi;
fi;



unset setup;