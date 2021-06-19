# My dotfiles, deployed by GNU-Stow

Software I use on a Xorg based GNU/linux distribution:
- Coding: i3, st, urxvt, zsh, tmux, vim, emacs, evil, org, git, mutt
- Productivity: mpv, zathura, sxiv, mpd/ncmpcpp, GNU-Stow, Lf, pcmanfm, xfce

## TODO (not sure about this):
- oh-my-zsh import with git submodules

## How to install
- install stow and git
```
git clone git@github:angelobattaglia/dotfiles
cd dotfiles
stow *
```
- reboot

## How to install my vim/neovim configuration (neovim v0.5)

Install vim-plug. Open your init.vim with vim, press ":" and type:

```
so % 
PlugInstall
```

The ***so %*** sources the configuration file, while ***PlugInstall*** installs the plugins.

## How to use my i3 configuration

Essentially, it's the default configuration but with vim-like keybindings to hop among
windows and some shortcuts to pop up the browser, the terminal and a GUI-based file manager.
The $Mod key is ALT on my operating system:
- brave-browser
```
Mod+Shift+Enter
```
- terminal
```
Mod+Enter
```
- pcmanfm (a GUI-based minimal file manager)
```
Mod+Shift+f
```

## How to use my tmux configuration

*Copy .tmux.conf in your ~ directory*

The rest is the same except for:
- <C-b> is binded as <C-a>
- Move through panels with Vim-like bindings!

```
# Moving through panels
<C-a> + h,j,k,l

# Create a new panel
<C-a> + c 

# Rename a panel
<C-a> + ,

# Split vertical
<C-a> + "

# Split horizontal
<C-a> + %

# Detach a session
<C-b> + d
tmux ls # to see how many windows you have opened

# Attach to a session
tmux attach -t 0 # for session 0

# Rename a session
tmux rename-session -t 0 git

# Create a new session and naming it neovim-latex, for example
tmux new -s neovim-latex

# Deleting sessions
tmux kill-session -t neovim-latex

# Resize panes with vim-like keybindings (TODO)
```
