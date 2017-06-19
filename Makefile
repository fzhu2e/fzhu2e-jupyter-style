all: basic vim dashboard nbextensions

basic:
	rm -rf ~/.jupyter/custom/custom.css
	cp -r ./jupyter/custom ~/.jupyter

vim:
	mkdir -p ~/Library/Jupyter/nbextensions
	cp -r ./jupyter/vim_binding ~/Library/Jupyter/nbextensions/
	cd ~/Library/Jupyter/nbextensions/vim_binding
	jupyter nbextension enable vim_binding/vim_binding
	defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false # fix the problem of macOS that one cannot repeat keys in textfield

dashboard:
	pip install jupyter_dashboards
	jupyter dashboards quick-setup --sys-prefix

nbextensions:
	pip install jupyter_contrib_nbextensions
	jupyter contrib nbextension install --user

clean:
	rm -rf ~/.jupyter/*
	rm -rf ~/Library/Jupyter/nbextensions/vim_binding
	mkdir -p ~/.jupyter/custom
	touch ~/.jupyter/custom/custom.css
	# dashboards
	jupyter dashboards quick-remove --sys-prefix
	pip uninstall jupyter_dashboards
	# nbextensions
	pip uninstall jupyter_contrib_nbextensions
