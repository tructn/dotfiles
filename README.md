# Using Vim in Windows

Run below command in Powershell to install VimPlug

```
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
```

Copy paste content of vimrc to below

```
vim $HOME/_vimrc
```

Reference

- https://github.com/junegunn/vim-plug
