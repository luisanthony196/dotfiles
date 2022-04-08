# Plugins de oh-my-zsh
plugins=(
  git
  virtualenv
  kubectl
  zsh-vi-mode
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
# No permite el historial duplicado
setopt HIST_SAVE_NO_DUPS
# Extraer en el lugar los archivos comprimidos
function extract(){
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unrar e $1 ;;
      *.gz) gunzip $1 ;;
      *.tar) tar xf $1 ;;
      *.tbz2) tar xjf $1 ;;
      *.tgz) tar xzf $1 ;;
      *.zip) unzip $1 ;;
      *.Z) uncompress $1 ;;
      *.7z) 7z x $1 ;;
      *) echo “‘$1’ cannot be extracted via extract()” ;;
    esac
  else
    echo “‘$1’ is not a valid file”
  fi
}
# Activa, desactiva o ve el estatus del servicio de docker
function dock() {
  case $1 in
    on) sudo systemctl start docker ;;
    off) sudo systemctl stop docker.socket && sudo systemctl stop docker ;;
    *) systemctl status docker ;;
  esac
}
# Crear una carpeta y entrar
function mkcd() {
  mkdir -p $1; cd $1
}
# Habilita automaticamente fzf si se tiene zvm
function zvm_after_init() {
  source $ZDOTDIR/config/fzf.zsh
}
