# shell
alias la="ls -a"
alias ll="ls -l"
alias ..="cd ../"
alias c="clear"
alias cls="clear && ls"

# git
alias gs="git status"
alias ga="git add"
alias gaa="git add --all"
alias gc="git commit -m"
alias gl="git log --oneline"
alias push="git push"
alias pull="git pull"

# application aliases
alias py="python3"
alias vim="nvim"
alias v="nvim"
alias peaclock="peaclock --config-dir ~/.config/peaclock"
alias kd="sudo kanata -c ~/.config/kanata/default.kbd"
alias kn="sudo kanata -c ~/.config/kanata/nvim.kbd"
alias blu="blueman-manager"

# config aliases
alias eb="vim ~/.bashrc"
alias bs="source ~/.bashrc"
alias ec="sudo vim /etc/nixos/configuration.nix"
alias eh="vim ~/.config/hypr/hyprland.conf"
alias nr="nixos-rebuild switch --use-remote-sudo"
alias ew="vim ~/.config/waybar/config.jsonc"
alias ews="vim ~/.config/waybar/style.css"
alias ev="vim ~/.config/nvim/init.vim"

# conveniences
alias ui="uv init && uv venv && source .venv/bin/activate"

# functions
function clone {
    git clone "git@github.com:chrisharrisx/$1.git"
}

# colors - di directory; 36 cyan
LS_COLORS=$LS_COLORS:'di=1;36' ; export LS_COLORS;
export CONF=~/.config

shopt -s autocd

eval "$(fasd --init auto)"
eval "$(starship init bash)"
