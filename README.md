# Uninstalling neovim
	brew uninstall neovim
	rm -rf ~/.config/nvim
	rm -rf ~/.local/share/nvim
	rm -rf ~/.config/nvim/plugged
	
# Installing neovim
	brew install neovim
	mkdir -p ~/.config/nvim/lua
	touch ~/.config/nvim/init.lua
