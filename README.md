# Arch Linux Dotfiles
My Arch Linux Hyprland dotfiles

## Requirements

Ensure the following are installed on local system (in shell, `$`):

### Yay

```
sudo pacman -S yay
```

### Git

```
yay -S git
```

### Stow

```
yay -S stow
```

## Installation

Install it on local machine using the following command:

```
git clone https://github.com/skaustubh04/dotfiles.git
```

then use GNU stow to create symlinks (soft links):

```
stow .
```

## PS
Don't forget to edit image paths in `.zshrc`.<br>
The following YouTube video was used as reference: https://youtu.be/y6XCebnB9gs?si=vpPFBIVO-yilL6Lw
