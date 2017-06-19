all:
	rm -rf ~/.jupyter/custom/custom.css
	cp -r ./jupyter/custom ~/.jupyter
	mkdir -p ~/Library/Jupyter/nbextensions
	cp -r ./jupyter/vim_binding ~/Library/Jupyter/nbextensions/
	cd ~/Library/Jupyter/nbextensions/vim_binding
	jupyter nbextension enable vim_binding/vim_binding
	defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

basic:
	rm -rf ~/.jupyter/custom/custom.css
	cp -r ./jupyter/custom ~/.jupyter

vim:
	mkdir -p ~/Library/Jupyter/nbextensions
	cp -r ./jupyter/vim_binding ~/Library/Jupyter/nbextensions/
	cd ~/Library/Jupyter/nbextensions/vim_binding
	jupyter nbextension enable vim_binding/vim_binding
	defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

clean:
	rm -rf ~/.jupyter/*
	rm -rf ~/Library/Jupyter/nbextensions/vim_binding
	mkdir -p ~/.jupyter/custom
	touch ~/.jupyter/custom/custom.css
