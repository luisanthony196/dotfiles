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
source $ZDOTDIR/config/lscolors.sh
# Cargar herramienta fzf
source $ZDOTDIR/config/fzf.zsh
# Cargar herencia en tilix
source $ZDOTDIR/config/tilix.zsh
# Cargar config para completacion
source $ZDOTDIR/config/completion.zsh
# Cargar alias personales
source $ZDOTDIR/config/aliases.zsh
# Crear archivos con determinados permisos (second hdd)
umask 000
# Opciones zsh
setopt HIST_SAVE_NO_DUPS
# Funcion de prueba
function hello(){
  echo 'Hello world'
}
