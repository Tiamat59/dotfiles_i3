.PHONY install conf installi3 confi3

stow = cd config && stow -v -t ~

install: 
	xargs -a packages/packages.list sudo apt-get install -y
	
installi3:
	sudo add-apt-repository ppa:kgilmer/speed-ricer -y 
	sudo apt-get update -y 
	xargs -a packages/i3.list sudo apt-get install -y
conf:
	$(stow) vim
	$(stow) nvim
confi3:
	$(stow) bin
	$(stow) urxvt
	xrdb ~/.Xresources
	$(stow) i3
	$(stow) polybar
	$(stow) picom
	$(stow) rofi


