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

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="$XDG_CONFIG_HOME/composer/vendor/bin:$PATH"
export GOPATH="$HOME/Workspace/go"
export GOBIN="$GOPATH/bin"
export PATH="$GOBIN:$PATH"
export LANG=en_US.UTF-8
export ARCHFLAGS="arm64"
export SSH_KEY_PATH="$HOME/.ssh/id_ed25519"
export XDG_CONFIG_HOME="$HOME/.config"
export TMUX_TMPDIR="$HOME/.tmux/tmp"
export CLICOLOR=1
export HOMEBREW_GITHUB_API_TOKEN=*****
export HOMEBREW_NO_ANALYTICS=1
export STARSHIP_CONFIG="$XDG_CONFIG_HOME/starship/starship.toml"
export DOCKER_DEFAULT_PLATFORM="linux/arm64"

# Fixes the GPG "Inappropriate ioctl for device" issue
export GPG_TTY=$(tty)

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="vim"
fi

export FZF_DEFAULT_OPTS=" \
--color=bg+:#313244,bg:#1e1e2e,spinner:#f5e0dc,hl:#f38ba8 \
--color=fg:#cdd6f4,header:#f38ba8,info:#cba6f7,pointer:#f5e0dc \
--color=marker:#f5e0dc,fg+:#cdd6f4,prompt:#cba6f7,hl+:#f38ba8"

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

alias ls="lsd -a"
alias ll="lsd -al"
alias lst="lsd -a --tree"
alias llt="lsd -al --tree"

alias v="vim"
alias nv="nvim"
alias nvk='NVIM_APPNAME="nvim-kickstart" nvim'

alias t="tmux"
alias tl="tmux ls"
alias tn="tmux new"
alias ta="tmux a"
alias tk="tmux kill-session"

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

function lk {
  cd "$(walk --icons "$@")"
}

# ------------------------------------------------------------------------------
# Load Extras
# ------------------------------------------------------------------------------

source <(fzf --zsh)
eval "$(starship init zsh)"
