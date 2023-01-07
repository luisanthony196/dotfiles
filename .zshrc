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
source $ZDOTDIR/scripts/aliases.zsh
# Cargar funciones personales
source $ZDOTDIR/scripts/functions.zsh
# Cargar colores para ls
source $ZDOTDIR/scripts/lscolors.sh
# Cargar herramienta fzf
source $ZDOTDIR/scripts/fzf.zsh
# Cargar herencia en tilix
# source $ZDOTDIR/config/tilix.zsh
# Cargar nvm
source $ZDOTDIR/scripts/nvm.zsh
# Cargar config para completacion
source $ZDOTDIR/scripts/completion.zsh
# Cargar alias personales
source $ZDOTDIR/scripts/aliases.zsh
# Cargar conda
source $ZDOTDIR/scripts/conda.zsh
# Cargar maven
source $ZDOTDIR/scripts/maven.zsh
# Crear archivos con determinados permisos (second hdd)
# ~ fstab [permission] Activado, mantiene permisos
# ~ fstab [default] Desactivado, todos los permisos activados por defecto
# umask 000
# No permite el historial duplicado
setopt HIST_SAVE_NO_DUPS
# Activar the fuck
eval $(thefuck --alias)
# Habilita automaticamente fzf si se tiene zvm
function zvm_after_init() {
  source $ZDOTDIR/scripts/fzf.zsh
}
