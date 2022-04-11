# DOTFILES

## Advertencias

Esta configuracion necesita de las siguientes dependencias
- zsh (desde el instalador de paquetes)
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) (se muestra como instalar)
- [fzf](https://github.com/junegunn/fzf) (se muestra como instalar)
- neofetch (opcional)
- [nerd fonts](https://www.nerdfonts.com/) (descargar una fuente e instalar)

## Instalacion de ZSH

Instalacion de dependencias
```bash
# Instalacion de zsh (configuracion vacia) ---
sudo apt install zsh
# Instalacion de oh-my-zsh ---
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Instalacion fzf ---
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.config/fzf
./.config/fzf/install
# Clona el repositorio en la carpeta `~/.config/zsh/` ---
git clone https://github.com/luisanthony196/dotfiles.git ~/.config/zsh
```
Configuramos el shell por defecto

```bash
# Definimos el shell por defecto (sin sudo)
chsh -s $(which zsh)
```

Administramos los archivos sin uso

```bash
# Movemos la carpeta de oh-my-zsh
mv ~/.oh-my-zsh ~/.config/oh-my-zsh
# Eliminamos archivos sin uso
cd ~
rm .zshrc .zshrc.pre-oh-my-zsh .bashrc .shell.pre-oh-my-zsh .bash_logout .bash_history .profile .fzf.zsh .fzf.bash
```

## Configuracion de los ficheros

Para una configuacion de los dotfiles, debemos usar unos cuantos enlaces simbolicos, ademas nos apoyaremos de variables de entorno declaradas en zshenv para usar los ficheros de configuracion en otras carpetas

```bash
# Agregamos el zshenv
cd ~
ln -s .config/zsh/symlink/zshenv .zshenv
# Agregamos el tema del prompt
cd ~/.config/oh-my-zsh/custom/themes
rm example.zsh-theme
ln -s ~/.config/zsh/symlink/example.zsh-theme
# Agregamos configuracion del neofetch
cd ~/.config/neofetch
rm config.conf
ln -s ~/.config/zsh/symlink/config.conf
```

Casi por terminar el proceso, es recomendable cerrar la terminal y eliminar los archivos restantes

```bash
cd ~
rm .zsh_history .zcompdump*
```

Ahora, en caso de que se desee utilizar plugins en zsh, descargamos sus repos en la carpeta 'custo/themes', en caso de no desear uno de los plugins listados en `.zshrc` entonces comentar o eliminar esa linea

```bash
# Descargamos los plugins ---
cd ~/.config/oh-my-zsh/custom/plugins/
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone --depth 1 https://github.com/jeffreytse/zsh-vi-mode
```

## Instalacion de Kitty

Configuracion de kitty para uso en root, detallado en las [faq](https://sw.kovidgoyal.net/kitty/faq/#keys-such-as-arrow-keys-backspace-delete-home-end-etc-do-not-work-when-using-su-or-sudo)

```bash
sudo nvim /etc/sudoers
# En las configuraciones de 'Defaults' agregar
Defaults env_keep+="TERM TERMINFO"
```
