# Setup fzf
# ---------
if [[ ! "$PATH" == */home/luis/.config/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/luis/.config/fzf/bin"
fi

# Key bindings
# ------------
source "/home/luis/.config/fzf/shell/key-bindings.zsh"

export FZF_CTRL_R_OPTS="--layout reverse"
