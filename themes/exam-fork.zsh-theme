# Prompt, prompt plus and end prompt
PROMPT="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})"
PROMPT+=' $(python_env)%{$fg_bold[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
RPROMPT='${return_status}$(git_prompt_status)%{$reset_color%}'

# After and before from git prompt
ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[magenta]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "

# God or bad if repository is commited
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} "

# File modifies, file created and git push necessary
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[red]%} "
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[magenta]%} "

# Files staged
ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%} " 
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg[yellow]%} "

# Virtualenv prompt brackets
# No tested
# ZSH_THEME_VIRTUALENV_PREFIX="%{$reset_color%} ["
# ZSH_THEME_VIRTUALENV_SUFFIX="%{$reset_color%}]"

# Conda prompt
# Need: conda config --set changeps1 False
function python_env() {
  local env="${VIRTUAL_ENV_PROMPT:-$CONDA_DEFAULT_ENV}"
  if [[ -n $env ]] && [[ $env != "base" ]]; then
    echo "%{$fg[yellow]%}[$env] "
  fi
}

# Lista de iconos utiles
#     
