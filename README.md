# Dot-Vim

This is my current vim config. I use nvim v0.6.1, Pathogen for handling plugins and [coc.nvim](https://github.com/neoclide/coc.nvim) for all the fancy stuff.


# Installation
```
git clone https://github.com/bihorco36/dot-vim.git ~/.vim
cd ~/vim && bash init.sh
```

### Dependencies
```
sudo apt install neovim ripgrep
rvm @global do gem install solargraph
npm -g install typescript
```

### Plugins
Open vim and enter the following commands to install all the plugins

#### Pathogen
```
:source ~/.vimrc
:PlugInstall
```

#### Coc
After the Pathogen plugins installation succeeded, you need to symlink the package.json from this directory to your coc config

```
rm ~/.config/coc/extensions/package.json
ln -s package.json ~/.config/coc/extensions/package.json
```

Now you can install all the CocPlugins using vim
`:CocInstall`

