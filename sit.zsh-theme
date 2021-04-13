function collapse_pwd {
    echo $(pwd | sed -e "s,^$HOME,~,")
}

local ret_status="%(?:%{$fg_bold[magenta]%}$ :%{$fg_bold[red]%}$ )"
PROMPT='%{$fg_bold[green]%}%n%{$fg_bold[yellow]%}@%{$fg_bold[cyan]%}%m %{$fg_bold[yellow]%}$(collapse_pwd)%{$reset_color%} $(git_prompt_info)${ret_status}%{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[cyan]%}git:(%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[cyan]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[cyan]%})"
