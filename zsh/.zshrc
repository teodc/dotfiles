# ------------------------------------------------------------------------------
# Oh My Zsh
# ------------------------------------------------------------------------------

# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
#ZSH_THEME="teodc"

# Use case-sensitive completion
#CASE_SENSITIVE="true"

# Use hyphen-insensitive completion (case-sensitive completion must be off, _ and - will be interchangeable)
#HYPHEN_INSENSITIVE="true"

# Auto-update behavior
#zstyle ':omz:update' mode disabled   # disable automatic updates
#zstyle ':omz:update' mode auto       # update automatically without asking
#zstyle ':omz:update' mode reminder   # just remind me to update when it's time
zstyle ":omz:update" frequency 7     # how often to auto-update (in days)

#Uncomment if pasting URLs and other text is messed up
#DISABLE_MAGIC_FUNCTIONS="true"

# Disable colors in ls
#DISABLE_LS_COLORS="true"

# Disable auto-setting terminal title
#DISABLE_AUTO_TITLE="true"

# Enable command auto-correction
#ENABLE_CORRECTION="true"

# Display dots whilst waiting for completion
COMPLETION_WAITING_DOTS="true"
#COMPLETION_WAITING_DOTS="%F{yellow}waiting...%f"

# Disable marking untracked files under VCS as dirty (makes repository status check for large repositories much faster)
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Set the command execution time stamp shown in the history command output
HIST_STAMPS="yyyy-mm-dd"

# Use another custom folder than $ZSH/custom
#ZSH_CUSTOM=/path/to/new-custom-folder

# Plugins to load (plugins can be found in $ZSH/plugins/ and $ZSH_CUSTOM/plugins/)
plugins=(
  aws
  git
  httpie
  zsh-autosuggestions
  zsh-syntax-highlighting
)

# Enable the zsh-completions plugin
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------------------------
# User Configuration
# ------------------------------------------------------------------------------

export XDG_CONFIG_HOME="$HOME/.config"

export PATH="$HOME/.local/bin:$PATH"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export GOPATH="$HOME/Workspace/go"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"
export PATH="$XDG_CONFIG_HOME/composer/vendor/bin:$PATH"

export ARCHFLAGS="x86_64"
export CLICOLOR=1
export DOCKER_DEFAULT_PLATFORM="linux/amd64"
export HOMEBREW_GITHUB_API_TOKEN=*****
export HOMEBREW_NO_ANALYTICS=1
export LANG="en_US.UTF-8"
export SSH_KEY_PATH="$HOME/.ssh/id_ed25519"
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export TERM="xterm-256color"
export TMUX_TMPDIR="$XDG_CONFIG_HOME/tmux/tmp"

# Fixes the GPG "Inappropriate ioctl for device" issue
export GPG_TTY=$(tty)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="vim"
fi

# TokyoNight for fzf
export FZF_DEFAULT_OPTS="$FZF_DEFAULT_OPTS \
  --highlight-line \
  --info=inline-right \
  --ansi \
  --layout=reverse \
  --border=none
  --color=bg+:#283457 \
  --color=bg:#16161e \
  --color=border:#27a1b9 \
  --color=fg:#c0caf5 \
  --color=gutter:#16161e \
  --color=header:#ff9e64 \
  --color=hl+:#2ac3de \
  --color=hl:#2ac3de \
  --color=info:#545c7e \
  --color=marker:#ff007c \
  --color=pointer:#ff007c \
  --color=prompt:#2ac3de \
  --color=query:#c0caf5:regular \
  --color=scrollbar:#27a1b9 \
  --color=separator:#ff9e64 \
  --color=spinner:#ff007c \
"

# History stuff
HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

# Prevent auto spelling correction
unsetopt correct_all
unsetopt correct

# ------------------------------------------------------------------------------
# Aliases
# ------------------------------------------------------------------------------

alias zshsrc="source $HOME/.zshrc"
alias tmusrc="tmux source $XDG_CONFIG_HOME/tmux/tmux.conf"

alias zshconf="vim $HOME/.zshrc"
alias sshconf="vim $HOME/.ssh/config"
alias vimconf="vim $HOME/.vimrc"
alias tmuconf="vim $XDG_CONFIG_HOME/tmux/tmux.conf"
alias gitconf="vim $HOME/.gitconfig"
alias alaconf="vim $XDG_CONFIG_HOME/alacritty/alacritty.toml"
alias ideconf="vim $HOME/.ideavimrc"
alias ameconf="vim ~/.amethyst.yml"

alias h="history"
alias hg="history | grep"
alias hgi="history | grep -i"

alias cat="bat"

alias yz="yazi"

alias ls="lsd -a"
alias ll="lsd -al"
alias lst="lsd -a --tree"
alias llt="lsd -al --tree"

alias v="vim"
alias nv="nvim"
alias nvk='NVIM_APPNAME="nvim-kickstart" nvim'

alias t="tmux new-session -A -s main"
alias tl="tmux ls"
alias ta="tmux attach-session -t"
alias tn="tmux new-session -A -s"
alias tk="tmux kill-session -t"
alias tx="tmux kill-server"

alias rsync-cp="rsync -avz --progress -h"
alias rsync-mv="rsync -avz --progress -h --remove-source-files"
alias rsync-update="rsync -avzu --progress -h"
alias rsync-sync="rsync -avzu --delete --progress -h"

alias lzg="lazygit"
alias lzd="lazydocker"

alias artisan="php artisan"
alias tinker="php artisan tinker"
alias console="php bin/console"

alias py="python3"
alias pypip="python3 -m pip"
alias pyvenv="python3 -m venv"

alias dc="docker compose"
alias dce="docker compose exec"

alias kc="kubectl"

# ------------------------------------------------------------------------------
# Functions
# ------------------------------------------------------------------------------

# Launch a Yazi that automatically cd into the cwd
function y() {
    local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
    yazi "$@" --cwd-file="$tmp"
    if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
        builtin cd -- "$cwd"
    fi
    rm -f -- "$tmp"
}

# ------------------------------------------------------------------------------
# Extras
# ------------------------------------------------------------------------------

source <(fzf --zsh)
eval "$(starship init zsh)"
