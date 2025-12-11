# Append history instead of overwriting
setopt APPEND_HISTORY

# Share history across tabs & windows instantly
setopt SHARE_HISTORY

# Write history after each command
setopt INC_APPEND_HISTORY_TIME

# Don’t save duplicates
setopt HIST_IGNORE_DUPS
setopt HIST_REDUCE_BLANKS

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

for file in ~/.{path,aliases,exports,zshrc_autogen,functions}; do
    [ -r "$file" ] && source "$file"
done;
unset file

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

# Username color depends on root or normal user
if [[ $EUID -eq 0 ]]; then
  USER_COLOR="%{$fg[red]%}"
else
  USER_COLOR="%{$fg[cyan]%}"
fi

PROMPT="
%{$terminfo[bold]$fg[blue]%}%#%{$reset_color%} \
${USER_COLOR}%n%{$reset_color%} %{$fg[white]%}@ \
%{$fg[green]%}%m \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%} \
%{$fg[white]%}[%*] L:%L N:%i
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"

