.PHONY: setup

setup: vimdir
	git clone git://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim
	unlink ~/.vimrc
	ln -s $(CURDIR)/.vimrc ~/.vimrc

vimdir:
	mkdir -p ~/.vim/bundle
