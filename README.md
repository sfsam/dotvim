## Installation

```
git clone --recursive https://github.com/sfsam/dotvim.git ~/.vim
mkdir ~/.vim/swap ~/.vim/undo
```

## Dependencies

Add an alias to .zshrc that points to the version of Vim inside /Applications/MacVim.app:

```
alias vim="/Applications/MacVim.app/Contents/MacOS/Vim"
```

Also, install the Source Code Pro font.

https://github.com/adobe-fonts/source-code-pro

## Adding Plugins

```
cd ~/.vim
git submodule add https://PATH/TO/PLUGIN.git pack/bundle/start/PLUGIN
git commit
```

## Updating Plugins

```
cd ~/.vim
git submodule update --remote --merge
git commit
```

## Removing Plugins

```
cd ~/.vim
git submodule deinit pack/bundle/start/PLUGIN
git rm pack/bundle/start/PLUGIN
rm -Rf .git/modules/pack/bundle/start/PLUGIN
git commit
```

