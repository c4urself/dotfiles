PROMPT=' 🌸  %{$fg[yellow]%}%n@%m%{$reset_color%} %{$fg[green]%}%c%{$fg[yellow]%} $(git_prompt_info)→ %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}(%{$fg_bold[blue]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$fg[cyan]%})%{$fg[yellow]%} "

ZSH_THEME_GIT_PROMPT_DIRTY="%{$reset_color%}%{$fg[cyan]%}*%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_AHEAD="%{$reset_color%}%{$fg[cyan]%}!%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""
