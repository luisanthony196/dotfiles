# Configuracion para compinit
# zstyle ':completion:*' auto-description 'specify: %d'
# -- Definir completadores
zstyle ':completion:*' completer _extensions _complete _approximate
# -- Formato de la descripcion
zstyle ':completion:*' format '%F%BCompleting %d%b%f'
# -- Mostrar grupos correctos
zstyle ':completion:*' group-name ''
# -- Color para archivos y directorios
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
# zstyle ':completion:*' menu select=2
# -- Limitar el contenido que sobresale
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
# -- Completion matching control
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true
# Emulacion de vim en completion
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
