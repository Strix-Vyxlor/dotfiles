# Created by newuser for 5.9

export EDITOR=nvim

alias ls="eza --icons"
alias ll="eza --icons -l"
alias lla="eza --icons -la"
alias tree="eza --icons --tree"
alias cat="bat --plain"

alias vencord='sh -c "$(curl -sS https://raw.githubusercontent.com/Vendicated/VencordInstaller/main/install.sh)"'

ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share/}/zinit/zinit.git"
if [ ! -d ${ZINIT_HOME} ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

autoload -Uz compinit && compinit

zinit cdreplay -q

bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"
eval "$(oh-my-posh init zsh --config ~/.config/oh-my-posh/multivese-neon.json)"
