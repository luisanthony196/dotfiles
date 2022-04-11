# Prompt, prompt plus and end prompt
PROMPT="%(?:%{$fg_bold[green]%}:%{$fg_bold[red]%})"
PROMPT+='$(virtualenv_prompt_info) %{$fg_bold[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
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
# After and before from virtualenv prompt
ZSH_THEME_VIRTUALENV_PREFIX="%{$reset_color%} ["
ZSH_THEME_VIRTUALENV_SUFFIX="%{$reset_color%}]"
# Lista de iconos utiles
#     
