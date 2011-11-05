# Installs extensions and compiles things that need compiling.
#
#
help:
	@echo "install - install + compile native things."
	@echo "update  - Download update for all plugins."

install: commandt

commandt:
	cd bundle/Command-T/ruby/command-t/;\
		/usr/bin/ruby extconf.rb;\
		make clean && make

update:
	git submodule foreach git pull origin master 

