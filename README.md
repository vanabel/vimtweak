# VimTweak

## What is this

This is a tweaking dll for GVim.

## Install

The current version is include a `install.bat` which will automatically copy `vimtweak32.dll` or `vimtweak64.dll` to the `gvim.exe` directory. 

The installation is easy by use [vim-plug](https://github.com/junegunn/vim-plug), just add

```
Plug 'vanabel/vimtweak', {'do', 'install.bat'}
```
in your work vimrc and run `:PlugInstall` in gvim.

> But it should be noted that the path of `gvim.exe` maybe not correct. It is set to be `E:\Vim8\vim80\`, and I failed to detect it automatically by `where`. In that case, you should copy `vimtweak32.dll` or `vimtweak64.dll` into same directory with gvim.exe by hand after adding the following  in your vimrc
```
Plug 'vanabel/vimtweak'
```

## Usage

### Alpha Window

#### For example, 200/255 alpha

```
:call libcallnr("vimtweak64.dll", "SetAlpha", 200)
```

#### reset alpha

```
:call libcallnr("vimtweak64.dll", "SetAlpha", 255)
```

### Maximized Window

#### Enable

```
:call libcallnr("vimtweak64.dll", "EnableMaximize", 1)
```

#### Disable

```
:call libcallnr("vimtweak64.dll", "EnableMaximize", 0)
```

### TopMost Window

#### Enable

```
:call libcallnr("vimtweak64.dll", "EnableTopMost", 1)
```

#### Disable

```
:call libcallnr("vimtweak64.dll", "EnableTopMost", 0)
```

## License

MIT

## Author

Yasuhiro Matsumoto (a.k.a mattn)
