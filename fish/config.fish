if status is-interactive
    # Commands to run in interactive sessions can go here
end

# disable annoying greeting message
set -g fish_greeting

# key bindings
bind \cf "source $HOME/scripts/fzfcd; commandline -f repaint"

# extend path
fish_add_path $HOME/bin
fish_add_path $HOME/scripts
fish_add_path $HOME/scripts-work
fish_add_path /opt/homebrew/bin

# exports
export DOTFILES="$HOME/dotfiles"
export SCRIPTS="$HOME/dotfiles/scripts"
export SCRIPTSWORK="$HOME/dotfiles/scripts-work"
export ZETTELKASTEN="$HOME/zettelkasten"

# some aliases
alias vim="nvim"
alias l="ls -lh"
alias ll="ls -lah"
alias reload="source $HOME/.config/fish/config.fish"
alias dotfiles="cd $DOTFILES"
alias scripts="cd $SCRIPTS"
alias scriptswork="cd $SCRIPTSWORK"
alias zettelkasten="cd $ZETTELKASTEN"
alias lg="lazygit"
alias todo="vim $DOTFILES/todo.md"

# import work related config files
for config in ~/.config/fish/conf.d/*.fish
    source $config
end
