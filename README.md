# dotfiles

## VIM

### Install vimplug
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```

### .vimrc file in Windows

```
vim $HOME/_vimrc
```

## NeoVim

### Install vimplug
```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

### init.vim
Create init.vim in C:\Users\trucn\AppData\Local\nvim

