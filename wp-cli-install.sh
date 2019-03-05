#!/usr/bin/env bash
set -e
set -o pipefail

# If wpcli is not installed and user is not "root"
if ! wp cli version && "$EUID" -ne 0 ; then
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mkdir -p ~/bin
	mv wp-cli.phar ~/bin/wp
	cat "export PATH=~/bin:$PATH" >> ~/.bashrc
	. ~/.bashrc
	wp cli version
fi

exit 1
