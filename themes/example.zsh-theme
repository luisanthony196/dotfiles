# Custom theme called 'example'

# Prompt, prompt plus and end prompt
PROMPT="%(?:%{$FG[118]%}:%{$fg_bold[red]%})"
PROMPT+='$(virtualenv_prompt_info) %{$FG[118]%}%c%{$reset_color%} $(git_prompt_info)'
RPROMPT='${return_status}$(git_prompt_status)%{$reset_color%}'
# After and before from git prompt
ZSH_THEME_GIT_PROMPT_PREFIX="%{$FG[171]%} "
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
# After and before from virtualenv prompt
ZSH_THEME_VIRTUALENV_PREFIX="%{$reset_color%} ["
ZSH_THEME_VIRTUALENV_SUFFIX="%{$reset_color%}]"
# God or bad if repository is commited
ZSH_THEME_GIT_PROMPT_CLEAN="%{$FG[118]%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[red]%} "
# File modifies, file created and git push necessary
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[blue]%} ﯽ"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[cyan]%} "
ZSH_THEME_GIT_PROMPT_AHEAD="%{$fg_bold[yellow]%} "
# Files staged
ZSH_THEME_GIT_PROMPT_ADDED="%{$FG[148]%} "
# Unnecessary states
#ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%} ✖"
#ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[magenta]%} ➜"
#ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[yellow]%} ═"
