export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
# ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh
# Load Aliases
[[ -f ~/.functions_and_aliases ]] && source ~/.functions_and_aliases

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Disable Underline zsh-syntax highlight
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=none
ZSH_HIGHLIGHT_STYLES[precommand]=none

#FZF
source <(fzf --zsh)

#Zoxide
eval "$(zoxide init zsh)"


#Forgit
[ -f $HOMEBREW_PREFIX/share/forgit/forgit.plugin.zsh ] && source $HOMEBREW_PREFIX/share/forgit/forgit.plugin.zsh

# StarShip
eval "$(starship init zsh)"


#Autosuggestions
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh

#Syntax highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#Forgit
[ -f $HOMEBREW_PREFIX/share/forgit/forgit.plugin.zsh ] && source $HOMEBREW_PREFIX/share/forgit/forgit.plugin.zsh