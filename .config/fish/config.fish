#####################
### CONFIGURACION ###
# Usamos el gestor de paquetes fisher e instalamos los plugins:
# - jorgebucaran/fisher
# - patrickf1/fzf.fish
# - jorgebucaran/nvm.fish
# - jorgebucaran/autopair.fish
#####################

### PATH ###
set -e fish_user_paths
set -U fish_user_paths $HOME/.dotnet/tools $HOME/.cargo/bin $HOME/.local/bin
### ALIASES ###
# Mejora de comandos
alias ls='eza -al --color=always --group-directories-first'
alias la='eza -a --color=always --group-directories-first'
alias ll='eza -l --color=always --group-directories-first'
alias lt='eza -aT --color=always --group-directories-first'
alias grep='grep --color=auto'
alias bat='bat --paging=never'
alias cat='bat -pp --tabs=2'
alias lgit='lazygit'
alias ldoc='lazydocker'
# Navegacion
alias ..='cd ..'
alias ...='cd ...'
alias cdph="cd /mnt/Documents/Php"
alias cdpy="cd /mnt/Documents/Python"
alias cdja="cd /mnt/Documents/Java"
alias cdpr="cd /mnt/Documents/Pruebas"
alias cdjs="cd /mnt/Documents/Javascript"
alias cdts="cd /mnt/Documents/Typescript"
alias cdsc="cd /mnt/Documents/Scripts"
alias cdcs="cd /mnt/Documents/Csharp"
alias cddo="cd /mnt/Downloads"
# Alias para docker compose
alias dcf="docker compose up -d --build --force-recreate"
alias dcu="docker compose up -d"
alias dcl="docker compose logs -f"
alias dcd="docker compose down"
alias dcp="docker compose ps"
alias dc1="docker compose start"
alias dc0="docker compose stop"
# Alias para git
alias gs='git status'
alias gst='git status -sb'
alias ga='git add'
alias gaa='git add --all'
alias gal='git add .'
alias gc='git commit -m'
alias gca='git commit -a'
alias gloga='git log --oneline --decorate --graph --all'

set -gx EDITOR nvim

### FUNCTIONS ###
function fish_user_key_bindings
  bind -M insert \ce end-of-line
  bind -M insert \cp history-search-backward
  bind -M insert \cn history-search-forward
  bind \cp history-search-backward
  bind \cn history-search-forward
end
function dclin --argument filename
  docker compose -f compose.lin.yml up -d --build --force-recreate
end
# Generar un archivo de backup
function backup --argument filename
    cp $filename $filename.bak
end
# Extraer en el lugar los archivos comprimidos
function extract
  if test -e $argv
    switch $argv
      case '*.tar.bz2'
        tar xjf $argv
      case '*.tar.gz'
        tar xzf $argv
      case '*.tar.xz'
        tar -xf $argv
      case '*.bz2'
        bunzip2 $argv
      case '*.rar'
        unrar x $argv
      case '*.gz '
        gunzip $argv
      case '*.tar '
        tar xf $argv
      case '*.tbz2 '
        tar xjf $argv
      case '*.tgz '
        tar xzf $argv
      case '*.zip'
        unzip $argv
      case '*.Z'
        uncompress $argv
      case '*.7z '
        7z x $argv
      case '*'
        echo $argv cannot be extracted via extract
    end
  else
    echo ‘$argv’ is not a valid file
  end
end
# Activa, desactiva o ve el estatus del servicio de docker
function dock -a option -d "Enable and disable docker"
  switch $option
    case 'on'
      sudo systemctl start docker
    case 'off'
      sudo systemctl stop docker.socket && sudo systemctl stop docker
    case '*'
      systemctl status docker
  end
end
# Crear una carpeta y entrar
function mkcd -a foldername
  mkdir -p $argv
  cd $argv
end
# Atajo para cheatsheet
function cht -d "Asks cheatsheet to cht.sh"
  curl cht.sh/$argv | bat -pp
end
# Backup de archivo
function backup -a filename -d "Backup file"
  cp $filename $filename.bak
end
# Compile c++
function ccpp --a filename -d "Compile C++ file"
  g++ $filename.cpp -o $filename && ./$filename
end
# Compile c++ project
function mkcpp --a foldername -d "Compile C++ project"
  if not test -d $foldername
    mkdir -p $foldername
  end
  cmake -S . -B $foldername 1> /dev/null && cmake --build $foldername
end
