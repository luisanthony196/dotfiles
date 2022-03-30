# DOTFILES

## Advertencias

Esta configuracion necesita de las siguientes dependencias
- zsh
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh)
- [fzf](https://github.com/junegunn/fzf)

## Instalacion

Instalacion de dependencias y administracion de archivos
```bash
# Instalacion de zsh (configuracion vacia)
sudo apt install zsh
# Definimos el shell por defecto (sin sudo)
chsh -s $(which zsh)
# Instalamos oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Agregamos plugins externos
git clone https://github.com/zsh-users/zsh-autosuggestions .config/oh-my-zsh/custom/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git .config/oh-my-zsh/custom/plugins/zsh-syntax-highlighting
# Eliminamos configuracion inicial
cd ~
rm .zshrc .zshrc.pre-oh-my-zsh
mv .oh-my-zsh .config/oh-my-zsh
# Instalamos fzf
git clone https://github.com/junegunn/fzf.git ~/.config/fzf
source ~/.config/fzf/install
# Eliminamos configuracion fzf
rm .bashrc .zshrc .fzf.zsh .fzf.bash
# Clona el repositorio en la carpeta `~/.config/zsh/`
git clone https://github.com/luisanthony196/dotfiles.git ~/.config/zsh
# Al clonar nos dirigimos a la carpeta
cd ~/.config/zsh
```

## Configuracion de archivos de configuracion

Creacion de enlaces y carga de configuracion
```bash
# Creacion del enlace simbolico
ln -s zshenv $HOME/.zshenv
# Movemos el historial
mv ~/.zsh_history ./histfile
# Hacemos el enlace simbolico del tema
ls -s ./example.zsh-theme ~/.config/oh-my-zsh/custom/themes/
# Si se tiene neofetch
ls -s ./config.conf ~/.config/neofetch/
```
