# Setup fzf
# ---------
if [[ ! "$PATH" == *$HOME/.config/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}$HOME/.config/fzf/bin"
fi

# Key bindings
# ------------
source "$HOME/.config/fzf/shell/key-bindings.zsh"
