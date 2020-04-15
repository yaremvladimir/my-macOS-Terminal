HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000

for file in ~/.{path,aliases,exports,zshrc_autogen,functions}; do
    [ -r "$file" ] && source "$file"
done;
unset file

autoload -U colors && colors
PS1="%{$fg[red]%}%n%{$reset_color%}@%{$fg[blue]%}%m %{$fg[yellow]%}%~ %{$reset_color%}%% "

  PROMPT="
%{$terminfo[bold]$fg[blue]%}%#%{$reset_color%} \
%{$fg[cyan]%}%n %{$fg[white]%}@ \
%{$fg[green]%}%m \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%} \
%{$fg[white]%}[%*] L:%L N:%i
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
