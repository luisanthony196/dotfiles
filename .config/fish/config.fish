## Set values
# Hide welcome message & ensure we are reporting fish as shell
set fish_greeting
# set VIRTUAL_ENV_DISABLE_PROMPT "1"
set -gx EDITOR lvim
set -xU MANPAGER "sh -c 'col -bx | bat -l man -p'"
set -xU MANROFFOPT "-c"
set -x SHELL /usr/bin/fish

## Export variable need for qt-theme
if type "qtile" >> /dev/null 2>&1
  set -x QT_QPA_PLATFORMTHEME "qt5ct"
end

# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low

## Environment setup
# Add ~/.local/bin to PATH
if test -d ~/.local/bin
  if not contains -- ~/.local/bin $PATH
    set -p PATH ~/.local/bin
  end
end

# Add ~/.dotnet/tools to PATH
if test -d ~/.dotnet/tools
  if not contains -- ~/.dotnet/tools $PATH
    set -p PATH ~/.dotnet/tools
  end
end

## Advanced command-not-found hook
# source /usr/share/doc/find-the-command/ftc.fish

## Atajos de teclado
if [ "$fish_key_bindings" = fish_vi_key_bindings ];
  bind --erase --preset \cr
  bind -M insert \ce end-of-line
  bind -M insert \cp history-search-backward
  bind -M insert \cn history-search-forward
  bind -M insert \cr history-pager
  bind \cp history-search-backward
  bind \cn history-search-forward
  bind \cr history-pager
  bind --preset U redo
else
end

# Fish command history
function history
  builtin history --show-time='%F %T '
end

function backup --argument filename
  cp $filename $filename.bak
end

# Copy DIR1 DIR2
function copy
  set count (count $argv | tr -d \n)
  if test "$count" = 2; and test -d "$argv[1]"
    set from (echo $argv[1] | string trim --right --chars=/)
    set to (echo $argv[2])
    command cp -r $from $to
  else
    command cp $argv
  end
end

# Cleanup local orphaned packages
function cleanup
  while pacman -Qdtq
    sudo pacman -R (pacman -Qdtq)
  end
end

## Useful aliases

# Replace ls with eza
alias ls 'eza -al --color=always --group-directories-first --icons' # preferred listing
alias la 'eza -a --color=always --group-directories-first --icons'  # all files and dirs
alias ll 'eza -l --color=always --group-directories-first --icons'  # long format
alias lt 'eza -aT --color=always --group-directories-first --icons' # tree listing
alias l. 'eza -ald --color=always --group-directories-first --icons .*' # show only dotfiles

# Replace some more things with better alternatives
alias cat 'bat --style header --style snip --style changes --style header'

# Common use
alias .. 'cd ..'
alias ... 'cd ../..'
alias .... 'cd ../../..'
alias ..... 'cd ../../../..'
alias ...... 'cd ../../../../..'
alias big 'expac -H M "%m\t%n" | sort -h | nl'     # Sort installed packages according to size in MB (expac must be installed)
alias dir 'dir --color=auto'
alias fixpacman 'sudo rm /var/lib/pacman/db.lck'
alias gitpkg 'pacman -Q | grep -i "\-git" | wc -l' # List amount of -git packages
alias grep 'ugrep --color=auto'
alias egrep 'ugrep -E --color=auto'
alias fgrep 'ugrep -F --color=auto'
alias grubup 'sudo update-grub'
alias hw 'hwinfo --short'                          # Hardware Info
alias ip 'ip -color'
alias psmem 'ps auxf | sort -nr -k 4'
alias psmem10 'ps auxf | sort -nr -k 4 | head -10'
alias rmpkg 'sudo pacman -Rdd'
alias tarnow 'tar -acf '
alias untar 'tar -zxvf '
alias upd '/usr/bin/garuda-update'
alias vdir 'vdir --color=auto'
alias wget 'wget -c '
alias activate 'source .venv/bin/activate.fish'

# Get fastest mirrors
alias mirror 'sudo reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist'
alias mirrora 'sudo reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist'
alias mirrord 'sudo reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist'
alias mirrors 'sudo reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist'

# Get the error messages from journalctl
alias jctl 'journalctl -p 3 -xb'

# Recent installed packages
alias rip 'expac --timefmt="%Y-%m-%d %T" "%l\t%n %v" | sort | tail -200 | nl'

# Navegacion
alias cdph="cd /mnt/Documents/Php"
alias cdpy="cd /mnt/Documents/Python"
alias cdja="cd /mnt/Documents/Java"
alias cdpr="cd /mnt/Documents/Pruebas"
alias cdjs="cd /mnt/Documents/Javascript"
alias cdts="cd /mnt/Documents/Typescript"
alias cdsc="cd /mnt/Documents/Scripts"
alias cdcs="cd /mnt/Documents/Csharp"
alias cddo="cd /mnt/Downloads"
alias cddk="cd /mnt/Templates/docker"
alias cdex="cd /mnt/Templates/exercism"
alias cddb="cd /mnt/Templates/databases"

# Alias para docker compose
alias dcf="docker compose up -d --build --force-recreate"
alias dcu="docker compose up -d"
alias dcl="docker compose logs -f"
alias dcd="docker compose down"
alias dcp="docker compose ps"
alias dc1="docker compose start"
alias dc0="docker compose stop"

# Git aliases
alias gs='git status'
alias gst='git status -sb'
alias ga='git add'
alias gaa='git add --all'
alias gal='git add .'
alias gc='git commit -m'
alias gca='git commit -a'
alias gloga='git log --oneline --decorate --graph --all'

# Traduccion
alias tranes="trans en:es"
alias tranen="trans es:en"

# Cheatsheet
function cht -d "Asks cheatsheet to cht.sh"
  curl cht.sh/$argv | bat -pp
end

# Docker service
function dock -a option -d "Enable and disble docker"
  switch $option
  case 'on'
    sudo systemctl start docker
  case 'off'
    sudo systemctl stop docker.socket && sudo systemctl stop docker
  case '*'
    systemctl status docker
  end
end
