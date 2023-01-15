# Carpeta para archivos de zsh
export ZDOTDIR="$HOME/.config/zsh"
# Carpeta de oh-my-zsh
export ZSH="$HOME/.config/oh-my-zsh"
# Archivo de historial de zsh
export HISTFILE="$ZDOTDIR/histfile"
# Editor por defecto en git
export EDITOR="nvim"
# Tema personalizado de oh-my-zsh
export ZSH_THEME="exam-fork"
# Define como se muestra la lista en las apps que usan fzf
export FZF_DEFAULT_OPTS='--height 35% --layout=reverse --border'
# Tamanio del historial
export HISTSIZE=10000
export SAVEHIST=10000
# Agregar los binarios de mi usuario al path
typeset -U path PATH
path=(~/.local/bin $path)
export PATH
