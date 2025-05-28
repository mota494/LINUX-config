<div align="center">

# Ubuntu config

</div>

> [!NOTE]
> This config was made on Ubuntu 24.04LTS and it was also tested on Ubuntu 22.04LTS and Ubunutu 24.10 and it will (probabily work) on most systems based on Ubuntu/Debian

This is a minimal config for some tools that I use on my Ubuntu machine, it comes with a install script that should be pretty a simple and straightforward install, just run it and it should be good to go. The script creates backups of your old config files so you shouldn't worry to much about them. This is a sudoless config, since I use it on school PC's everything on here can be installed without sudo permission or comes pre installed on UNIX systems.

<div align="center">

### Requirements

<img width="90px" src="https://i.imgur.com/VevwB6u.png" alt="TMUX">
<img width="90px" src="https://i.imgur.com/ijZMsgt.png" alt="Kitty">
<img width="90px" src="https://i.imgur.com/uXgouDA.png" alt="ZShell">

</div>

<div align="center">

# Contents

</div>

### NVim

NVim is fork of Vim focused on extensability, it ditches the antique vimscript and embraces lua as it's scripting language making it way easier for community input. This NVim config comes with lazy as it's package manager for an easy plugin management.

### Tmux

Tmux is a terminal multiplexer that let's the user switch between several terminal programs in just one terminal with some possible customization.

### Kitty

Kitty is a fast and feature rich terminal emulator, with a very user friendly config file that is compatible with multiple operating systems.

### Startship

Starship is a fast, minimal and customizable terminal prompt that can be used in most terminal emulators, startship needs a nerd font that can be installed through [here](https://www.nerdfonts.com/) 

<div align="center">

# Extensability and customization

</div>

> [!WARNING]
> This config will always use the default Linux file system, not following the default location for everything is bad practice and makes it harder for new users to learn how to use the tools 

### NVim

```
$HOME/.config
```

### Tmux

Tmux is a terminal multiplexer that let's the user switch between several terminal programs in just one terminal with some possible customization.

### Kitty

Kitty is a fast and feature rich terminal emulator, with a very user friendly config file that is compatible with multiple operating systems.

### Startship

Starship is a fast, minimal and customizable terminal prompt that can be used in most terminal emulators, startship needs a nerd font that can be installed through [here](https://www.nerdfonts.com/) 
