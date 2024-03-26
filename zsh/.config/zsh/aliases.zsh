# aliases
alias e='$EDITOR'
alias se='sudo $EDITOR'
if [[ "$(uname -s)" == "Darwin" ]]; then
    # Commands to run on macOS
    echo "Running on macOS"
    # Add macOS-specific aliases, functions, or exports here
    alias cat='bat'
else
    # Commands to run on Linux
    echo "Running on Linux"
    # Add Linux-specific aliases, functions, or exports here
    alias cat='batcat'
fi

alias ls='eza'
alias ll='eza -alh'
alias tree='eza --tree'
#alias cd='z'
alias vim='nvim'
eval $(thefuck --alias)

# git
alias gs='git status'
alias gp='git push'
alias gl='git pull'

# ssh
alias apple='ssh user3@130.15.101.67'

# apple specific aliases
alias proj='~/projects/ilir/nonlinear_transform_coder/src/'

# terminal specific key bindings
bindkey '^[f' forward-word
bindkey "^[b" backward-word
bindkey "^[^?" backward-kill-word
