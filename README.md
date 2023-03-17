# DOTFILES

Con el objetivo de tener la carpeta de inicio de linux lo mas limpia posible y los archivos de configuración ordenados, se creo este repositorio que lista los programas, comandos y archivos de configuración necesarios para llegar al objetivo.

## Requisitos

- `zsh`
- `fzf`
- `git`
- [oh-my-zsh](https://github.com/ohmyzsh/ohmyzsh) framework para fzf
- [nerd fonts](https://www.nerdfonts.com) fuentes parchadas para usar 'iconic fonts'

## Dependencias opcionales
- [homebrew](https://www.brew.sh) gestor de paquetes para mac y linux
- `bat`
- `exa`
- `neovim`
- `zoxide`
- `neofetch`

## Instalación

### Clonar el repositorio

En primer lugar se debe tener ya instalado `git` para clonar el repositorio en su destino

```bash
git clone https://github.com/luisanthony196/dotfiles.git ~/.config/zsh
```

### Instalación de zsh

Al cambiar el `SHELL` del sistema es recomendable cerrar y abrir la terminal para ver los cambios

```bash
# zsh y los componentes necesarios
sudo apt install zsh
# Definimos el shell por defecto (sin sudo)
chsh -s $(which zsh)
```

### Instalación de Oh-my-zsh

También puedes instalarlo siguiendo los pasos en su [pagina oficial](https://ohmyz.sh/), se debe recordar mover su carpeta a la que se indica en el comando

```bash
# Comando de pagina oficial
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# Movemos la carpeta de oh-my-zsh
mv ~/.oh-my-zsh ~/.config/oh-my-zsh
```

### Instalación de fzf

Puedes también instalarlo de forma manual con git, las instrucciones están en su [repositorio](https://github.com/junegunn/fzf). Es ese caso solo debes recordar mover el fichero generado a la carpeta `load`

```bash
# Usando el gestor de paquetes brew
brew install fz
# Habilitamos los keybindings
$(brew --prefix)/opt/fzf/install
# Movemos el script a la carpeta en el que se cargara automaticamente
mv ~/.fzf.zsh ~/.config/zsh/load
```

### Administramos los archivos sin uso

Para evitar la perdida de configuraciones desarrolladas por el usuario, se moverán los archivos a una carpeta que se deberá de eliminar después

```bash
# Primero creamos un backup
cd ~ && mkdir .trash
# Movemos todos los archivos a la ubicacion ~/.trash
mv -f .zshrc .zshrc.pre-oh-my-zsh .bashrc .shell.pre-oh-my-zsh .bash_logout .bash_history .profile .fzf.zsh .fzf.bash .trash
```

### Descarga de plugins

Cuando se desee instalar plugins adicionales, es necesario recordar instalarlos en su nueva ubicación y agregar sus nombres en el archivo `.zshrc`

```bash
# Plugins que se usan en esta configuracion
cd ~/.config/oh-my-zsh/custom/plugins/
git clone --depth 1 https://github.com/zsh-users/zsh-autosuggestions
git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone --depth 1 https://github.com/jeffreytse/zsh-vi-mode
```

## Configuración de los ficheros

Para la optima configuración de los dotfiles, debemos usar unos cuantos enlaces simbólicos, ademas nos apoyaremos de variables de entorno declaradas en `.zshenv`, lo que nos permitirá usar los ficheros del repositorio en nuestra configuración personal

```bash
# Agregamos el zshenv
cd ~
ln -s .config/zsh/.zshenv
# Agregamos el tema del prompt
cd ~/.config/oh-my-zsh/custom/themes && rm example.zsh-theme
ln -s ~/.config/zsh/themes/exam-fork.zsh-theme
```

Casi por terminar el proceso, es recomendable cerrar la terminal y eliminar los archivos que posiblemente se generen y no nos sean de utilidad

```bash
cd ~ && rm -f .zsh_history .zcompdump*
```

## Programas adicionales

- `kitty` terminal que aprovecha el uso de gpu

  ```bash
  # Agregamos configuracion de kitty
  cd ~/.config/kitty && rm -f kitty.conf
  ln -s ~/.config/zsh/config/kitty/kitty.conf
  ln -s ~/.config/zsh/config/kitty/color.ini
  ```

- `neofetch` muestra información del sistema

  ```bash
  # Agregamos configuracion del neofetch
  cd ~/.config/neofetch && rm -f config.conf
  ln -s ~/.config/zsh/config/neofetch/config.conf
  ```

  
