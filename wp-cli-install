#!/usr/bin/env bash
set -e
set -o pipefail

# If wpcli is not installed and user is not "root"
if [[ ! -x "$(command -v wp)" && "$EUID" -ne 0 ]]; then
	curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
	chmod +x wp-cli.phar
	mkdir -p ~/bin
	mv wp-cli.phar ~/bin/wp
	echo "PATH=~/bin:$PATH" >> ~/.bashrc
	. ~/.bashrc
	wp cli version
fi

exit 1
