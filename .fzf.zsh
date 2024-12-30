# Setup fzf
# ---------
if [[ ! "$PATH" == */home/winter/.fzf/bin* ]]; then
  PATH="${PATH:+${PATH}:}/home/winter/.fzf/bin"
fi

# Auto-completion
# ---------------
source "/home/winter/.fzf/shell/completion.zsh"

# Key bindings
# ------------
source "/home/winter/.fzf/shell/key-bindings.zsh"
