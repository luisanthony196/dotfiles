# Plugins de oh-my-zsh
plugins=(
  git
  zsh-vi-mode
  zsh-autosuggestions
  zsh-syntax-highlighting
)
# Cargar configuracion de oh-my-zsh
source $ZSH/oh-my-zsh.sh
# Cargar alias personales
source $ZDOTDIR/shell/aliases.zsh
# Cargar funciones personales
source $ZDOTDIR/shell/functions.zsh
# Cargar config para completacion
source $ZDOTDIR/shell/completion.zsh
# Cargar alias personales
source $ZDOTDIR/shell/aliases.zsh
# Carga los scripts de la carpeta load
source $ZDOTDIR/load/autostart.zsh
# No permite el historial duplicado
setopt HIST_IGNORE_ALL_DUPS
# Path que cargara mis scripts
path+=(
  "$HOME/.local/bin"
  "$ZDOTDIR/bin"
)
export path
