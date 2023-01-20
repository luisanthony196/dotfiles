# Script que carga en sesion los scripts de la carpeta load,
# si se desea ejecutar por separado este script, agregar en
# la primera fila el interprete #!/bin/zsh
folder="$ZDOTDIR/load"
for file in $(ls $folder | grep -v "autostart.zsh")
do
  source $folder/$file
done
unset folder file
