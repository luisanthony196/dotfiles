# Extraer en el lugar los archivos comprimidos
function extract(){
  if [ -f $1 ]; then
    case $1 in
      *.tar.bz2) tar xjf $1 ;;
      *.tar.gz) tar xzf $1 ;;
      *.tar.xz) tar -xf $1 ;;
      *.bz2) bunzip2 $1 ;;
      *.rar) unrar x $1 ;;
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
# Atajo para cheatsheet
function cht ()
{
  curl cht.sh/$1 | bat
}
# Traduccion rapida
function entes () {
  trans -b en:es $1
}
function esten () {
  trans -b es:en $1
}
