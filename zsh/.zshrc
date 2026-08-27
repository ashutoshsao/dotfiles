
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

PROMPT='%1~ $ '

# opencode
export PATH="$HOME/.opencode/bin:$PATH"

# google-cloud-sdk
[ -d "/opt/homebrew/share/google-cloud-sdk/bin" ] && export PATH="/opt/homebrew/share/google-cloud-sdk/bin:$PATH"

# default editor
export EDITOR="nvim"
export VISUAL="nvim"

alias k="kubectl"

# force emacs keybindings — zsh auto-switches to vi mode because "nvim" contains "vi",
# which silently breaks Option+Delete and other word-editing shortcuts
bindkey -e

# fix option+left/right word navigation (avoids ;3D / ;3C showing up literally)
bindkey "^[[1;3D" backward-word
bindkey "^[[1;3C" forward-word
bindkey "^[^?" backward-kill-word
bindkey "^[[3;3~" kill-word
