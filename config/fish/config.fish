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
fish_add_path $HOME/go/bin

# exports
export DOTFILES="$HOME/dotfiles"
export SCRIPTS="$HOME/dotfiles/scripts"
export ZETTELKASTEN="$HOME/zettelkasten"
export KASTEN="$ZETTELKASTEN/kasten"
export CUR_TERM=$(ps -ef | grep tmux | head -n 1 | awk '{print $8}')

# some aliases
alias vim="nvim"
alias l="ls -lh"
alias ll="ls -lah"
alias reload="source $HOME/.config/fish/config.fish"
alias dotfiles="cd $DOTFILES"
alias scripts="cd $SCRIPTS"
alias zet="cd $ZETTELKASTEN"
alias kasten="cd $KASTEN"
alias lg="lazygit"
alias todo="vim $ZETTELKASTEN/todo.md"
alias dosetupp="bash $HOME/dotfiles/setup.sh"
alias secrets="vim $HOME/.config/fish/conf.d/secrets.fish"
alias refresh="xrandr --output DP-0 --mode 1920x1080 --rate 144"

# import work and secret related config files
for config in ~/.config/fish/conf.d/*.fish
    source $config
end
