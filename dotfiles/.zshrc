HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
#ZSH_THEME="agnoster" # ingnored because this theme is overrided by powerline-shell theme
for file in ~/.{path,aliases,exports,zshrc_autogen,functions}; do
    [ -r "$file" ] && source "$file"
done;
unset file

if [ -r "${HOME}/.powerline-shell/powerline-shell.py" ]; then
  #install_powerline_precmd
  PROMPT="
%{$terminfo[bold]$fg[blue]%}%#%{$reset_color%} \
%{$fg[cyan]%}%n %{$fg[white]%}@ \
%{$fg[green]%}%m \
%{$fg[white]%}in \
%{$terminfo[bold]$fg[yellow]%}%~%{$reset_color%} \
%{$fg[white]%}[%*] L:%L N:%i
%{$terminfo[bold]$fg[red]%}$ %{$reset_color%}"
else
  PROMPT='%B%F{green}%n@%m%f:%F{blue}%~%f%b%(!.#.$)'
fi

