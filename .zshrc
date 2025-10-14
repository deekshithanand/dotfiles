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
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/deanand/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/deanand/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/deanand/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/deanand/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# export DISABLE_AUTO_TITLE=true

tmux-window-name() {
	($TMUX_PLUGIN_MANAGER_PATH/tmux-window-name/scripts/rename_session_windows.py &)
}

add-zsh-hook chpwd tmux-window-name
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"
# JAVA_HOME=/Users/deanand/.sdkman/candidates/java/25-tem
