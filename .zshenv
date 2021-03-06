# Archivos de configuracion
export XDG_CONFIG_HOME="$HOME/.config"
# Archivos de datos
# export XDG_DATA_HOME="$XDG_CONFIG_HOME/local/share"
# Ubicacion para la cache de las aplicaciones
# export XDG_CACHE_HOME="$XDG_CONFIG_HOME/cache"
# Carpeta para archivos de zsh
export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
# Carpeta de oh-my-zsh
export ZSH="$XDG_CONFIG_HOME/oh-my-zsh"
# Archivo de historial de zsh
export HISTFILE="$ZDOTDIR/histfile"
# Editor por defecto en git
export EDITOR="nvim"
# Tema personalizado de oh-my-zsh
export ZSH_THEME="exam-fork"
# Define como se muestra la lista en las apps que usan fzf
export FZF_DEFAULT_OPTS='--height 35% --layout=reverse --border'
#Tamanio del historial
export HISTSIZE=10000
export SAVEHIST=10000
# Lspconfig
export WORKSPACE="$HOME/.workspace"
export M2_HOME="/usr/share/maven"
