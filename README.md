# fzhu2e Jupyter Style

This is my customized Jupyter notebook style for quick deploy.
For more details about Jupyter notebook themes, please refer to
the fantastic repo
[jupyter-themes](https://github.com/dunovank/jupyter-themes).

Some screenshots of the style:
![](https://ooo.0o0.ooo/2017/06/19/59473e8d26abe.jpg)
![](https://ooo.0o0.ooo/2017/06/19/59473e8d2a7dd.jpg)

Main features:
+ Quick deploy, one command and ready to go
+ Nice and clean color scheme
+ Curated fonts
+ Vim keybinding via
    [jupyter-vim-binding](https://github.com/lambdalisue/jupyter-vim-binding)

Platforms supported:
+ macOS
+ Linux (needs modification of the target path in Makefile)

## How to install
If you don't want Vim key-binding feature, then just download or clone this repo,
and under the repo folder, run the command in your terminal:
```bash
make basic
```

If you want to have Vim key-binding feature, continue with
```bash
make vim
```
or just
```bash
make
```
in the very first beginning.

Then open your Jupyter notebook and you can tell the difference.

## Some important shortcuts if Vim keybinding is enabled
+ `i` to enter insert mode
+ `Ctrl-[` to exit insert mode
+ `Ctrl-]` to enter Jupyter mode


## How to remove
If you don't like it, you can easily remove it.
Just go to the repo folder and run
```bash
make clean
```

## License
MIT License

Copyright (c) 2017 Feng Zhu
