# Sebastian Glahn's Dotfiles
This is a collection of scripts, function and dotfiles I use for customizing my development workflow I use on a day-to-day basis.
My setup is inspired by the this [article](http://developer.atlassian.com/blog/2016/02/best-way-to-store-dotfiles-git-bare-repo/).

## Features
- Supports both Ubuntu and OS X
- Supports both Bash and Zsh
- Aliases for Git, Docker, Gradle, ...
- Vim configurat	ion and plugins
- Tmux configuration
- Custom bash prompt

## Installation 	
Clone into a bare repository in your home directory:
```bash
git clone --bare https://github.com/sglahn/dotfiles.git $HOME/.cfg
```
Create an alias in the current shell scope:
```bash
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
```
Checkout the actual content from the bare repository:
```bash
config checkout
```
If this step fails move or delete the already existing files.

Set a flag to hide files not explicitly tracked. So typing e.g. "config status" and other commands later, will not show up all files of your home directory as untracked:
```bash
config config --local status.showUntrackedFiles no
```
Source the aliases
```bash
source .aliases
```
To update the submodules in the project first source the .aliases file and then type:
```bash
configsub
```

## Dependencies
### Tmux
Tmux comes with the Tmux Plugin Manager already installed. To install the rest of the Tmux plugins configured in the .tmux.conf file, type <kbd>prefix</kbd>+<kbd>I</kbd>. The tmux-yank plugin has the following additional dependencies:

On Linux:
- xsel, install it with:
```
sudo apt-get install xsel
```
On OS X:
- reattach-to-user-namespace, install it with:
```
brew install reattach-to-user-namespace
```

### SDKMAN!
SDKMAN! is already configured in the .bash_profile and works for zsh and bash. To use it it has to be [installed](http://sdkman.io/install.html). 

## The Font I Use
[Hack](http://sourcefoundry.org/hack/)

## License
