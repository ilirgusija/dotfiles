
# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/ilirgusija/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/ilirgusija/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/ilirgusija/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/ilirgusija/google-cloud-sdk/completion.zsh.inc'; fi

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

alias cat='bat'
alias gs='git status'
alias apple='ssh user3@130.15.101.67'
alias ls='eza'
alias ll='eza -alh'
alias tree='eza --tree'
alias gp='git push'
alias gl='git pull'
alias vim='nvim'
eval "$(zoxide init zsh)"
alias cd='z'
