# Installation on new machine
```
git clone --bare https://github.com/sglahn/dotfiles.git $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout

config config --local status.showUntrackedFiles no
```
# Font
http://sourcefoundry.org/hack/
