# Configuracion hecha para root
ZSH_THEME_GIT_PROMPT_PREFIX=" %{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

function get_pwd() {
    echo "${PWD}"
}

PROMPT='%{$fg_bold[blue]%}$(get_pwd)%{$reset_color%}$(git_prompt_info)
%(?:%{$fg_bold[magenta]%}濫:%{$fg_bold[red]%}濫)%{$reset_color%}'
