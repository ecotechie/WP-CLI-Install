# WordPress init (in it) script

Shell script to remotely install WP-CLI and WordPress with several options...
Will need SSH access to remote server.

## DESCRIPTION

Install or Remove WP-CLI installation over SSH
Optionally, install WordPress as well

## SYNOPSYS

`wp-init --server <server> <flag(s)>`

## FLAGS:

**--help**,       **-h**	Show this usage message  
**--server**,     **-s**	Server name, can be in the form of user@domain or an alias from ~/.ssh/config  
**--cli**,        **-i**	Install WP-CLI  
**--remove-cli**,	**-r**	Remove WP-CLI and cleanup  
**--core**,       **-c**	Install WordPress after WP-CLI  
**--debug**,      **-d**	Debug script  

![wp-init](https://github.com/ecotechie/wp-init/raw/master/Demo-wp-init.gif "Installing WP-CLI, WP-CLI command completion and WordPress")
