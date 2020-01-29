
# man zshmisc, http://www.manpagez.com/man/1/zshmisc/

# left prompt
PROMPT='%{$fg_bold[white]%}%2~%{$reset_color%} $(git_prompt_info)'

# right prompt
RPROMPT="%{$fg_bold[white]%}[ %* ]%{$reset_color%}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX=" %{$fg_bold[white]%}$%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg_bold[yellow]%}*"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[blue]%}"
