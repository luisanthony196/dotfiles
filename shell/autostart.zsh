# Script que carga en sesion los scripts de la carpeta load,
# si se desea ejecutar por separado este script, agregar en
# la primera fila el interprete #!/bin/zsh
folder="$ZDOTDIR/load"
if [ -d "$folder" ]; then
  for file in $(ls $folder)
  do
    source $folder/$file
  done
fi
unset folder file
