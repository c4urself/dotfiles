# Oh-my-zsh settings
ZSH=$HOME/.oh-my-zsh
ZSH_THEME="christian"
plugins=(git,npm,node)

# Source oh-my-zsh goodness
source $ZSH/oh-my-zsh.sh

# Set default editor to MacVim
export EDITOR=mvim

# Set path
source ~/.bash/paths

# Work-related stuff
source ~/.bash/work

# Various third-party utils
source ~/.bash/utils

# Various aliases
source ~/.bash/shortcuts
