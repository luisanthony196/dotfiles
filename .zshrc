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
source $ZDOTDIR/config/aliases.zsh
# Cargar funciones personales
source $ZDOTDIR/config/functions.zsh
# Cargar colores para ls
source $ZDOTDIR/config/lscolors.sh
# Cargar herramienta fzf
source $ZDOTDIR/config/fzf.zsh
# Cargar herencia en tilix
# source $ZDOTDIR/config/tilix.zsh
# Cargar nvm
source $ZDOTDIR/config/nvm.zsh
# Cargar config para completacion
source $ZDOTDIR/config/completion.zsh
# Cargar alias personales
source $ZDOTDIR/config/aliases.zsh
# Cargar conda
source $ZDOTDIR/config/conda.zsh
# Cargar maven
source $ZDOTDIR/config/maven.zsh
# Crear archivos con determinados permisos (second hdd)
# ~ fstab [permission] Activado, mantiene permisos
# ~ fstab [default] Desactivado, todos los permisos activados por defecto
# umask 000
# No permite el historial duplicado
setopt HIST_SAVE_NO_DUPS
