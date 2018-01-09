# Sebastian Glahn's Dotfiles
This is a collection of scripts, function and dotfiles I use for customizing my development workflow I use on a day-to-day basis.
My setup is inspired by the this [article](http://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/).

## Features
- Supports both Ubuntu and OS X
- Supports both Bash and Zsh
- Aliases for Git, Docker, Gradle, ...
- Vim configuration and plugins
- Tmux configuration
- Custom bash prompt

## Installation
Clone into a bare repository in your home directory:
```
git clone --bare https://github.com/sglahn/dotfiles.git $HOME/.cfg
```
Create an alias in the current shell scope:
```
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
Checkout the actual content from the bare repository:
```
config checkout
```
If this step fails move or delete the already existing files.

Set a flag to hide files not explicitly tracked. So typing e.g. "config status" and other commands later, will not show up all files of your home directory as untracked:
```
config config --local status.showUntrackedFiles no
```

## The Font I Use
[Hack](http://sourcefoundry.org/hack/)

## License
