# Plugins de oh-my-zsh
plugins=(
  git
  vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# Cargar configuracion de oh-my-zsh
source $ZSH/oh-my-zsh.sh
# Cargar colores para ls
source $ZDOTDIR/lscolors.sh
# Cargar herramienta fzf
source $ZDOTDIR/fzf.zsh
# Cargar herencia en tilix
source $ZDOTDIR/tilix.zsh
# Cargar config para completacion
source $ZDOTDIR/completion.zsh
# Cargar alias personales
source $ZDOTDIR/aliases.zsh
# Crear archivos con determinados permisos (second hdd)
umask 000
# Opciones zsh
setopt HIST_SAVE_NO_DUPS
