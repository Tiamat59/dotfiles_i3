.PHONY: install conf installi3 confi3

stow = cd config && stow -v -t ~


install: 
	xargs -a packages/packages.list sudo apt-get install -y
	curl -fLo ~/.local/share/nvim/site/autoload/plug.vim \
	--create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	
installi3:
	sudo add-apt-repository ppa:kgilmer/speed-ricer -y 
	sudo apt-get update -y 
	xargs -a packages/i3.list sudo apt-get install -y
conf:
	$(stow) vim
	$(stow) nvim
	nvim +PlugInstall +q +q
confi3:
	xrdb ~/.Xresources
	$(stow) i3
	$(stow) polybar
	$(stow) rofi


