# uSimple
# Oh-My-Zsh simple dark theme based on ANSI colors
# The MIT License (MIT)
# 2023, Timur U, https://github.com/ucomru/zsh-usimple

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%}*"
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}"'!'

export VIRTUAL_ENV_DISABLE_PROMPT=1

venv_prompt_info() {
  [ -v VIRTUAL_ENV ] && \
  echo "%{$fg[cyan]%}${VIRTUAL_ENV:h:t}%{$reset_color%}%{$fg[blue]%}§%{$reset_color%}"
}

PROMPT='
%{$fg[cyan]%}%n%{$reset_color%}$fg[blue]%}%\@%{$reset_color%}\
%{$fg[magenta]%}%m%{$reset_color%} \
%{$fg[blue]%}%~%{$reset_color%} \
$(git_prompt_info)$(venv_prompt_info)
%(?,%{$fg[blue]%},%{$fg[red]%})$%{$reset_color%} '

RPROMPT="%(?,,%{$fg[red]%}%?%{$reset_color%}) \
%{$fg[blue]%}%*%{$reset_color%}"
