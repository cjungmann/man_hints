SHELL = /bin/sh

.PHONY: install
install:
	sudo makeinfo info-demo.txi
	sudo gzip info-demo.info
	sudo mv info-demo.info.gz /usr/share/info
	sudo install-info /usr/share/info/info-demo.info.gz /usr/share/info/dir

.PHONY: install_texinfo
install_texinfo:
	sudo wget https://www.gnu.org/software/texinfo/manual/texinfo/texinfo.info.tar.gz
	sudo tar -xzvf texinfo.info.tar.gz
	sudo gzip texinfo.info
	sudo mv texinfo.info.gz /usr/share/info
	sudo install-info /usr/share/info/texinfo.info.gz /usr/share/info/dir

.PHONY: uninstall
uninstall:
	sudo install-info --delete /usr/share/info/info-demo.info.gz /usr/share/info/dir
	sudo rm -f /usr/share/info/info-demo.info.gz
