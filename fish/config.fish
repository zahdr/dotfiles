if status is-interactive
    # Commands to run in interactive sessions can go here
end

# disable annoying greeting message
set -g fish_greeting

# extend path
fish_add_path $HOME/bin
fish_add_path $HOME/scripts

# exports
export DOTFILES="$HOME/dotfiles"
export SCRIPTS="$HOME/dotfiles/scripts"
export ZETTELKASTEN="$HOME/zettelkasten"

# some aliases
alias l="ls -lh"
alias ll="ls -lah"
alias reload="source $HOME/.config/fish/config.fish"
alias dotfiles="cd $DOTFILES"
alias scripts="cd $SCRIPTS"
alias zettelkasten="cd $ZETTELKASTEN"
alias lg="lazygit"
