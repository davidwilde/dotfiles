

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export PATH=$HOME/.gem/bin:$PATH
export PATH=$PATH:$(go env GOPATH)/bin



ff() {
    aerospace list-windows --all | fzf --bind 'enter:execute(bash -c "aerospace focus --window-id {1}")+abort'

}

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"

alias vi=nvim
