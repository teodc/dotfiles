# ------------------------------------------------------------------------------
# Oh My Zsh
# ------------------------------------------------------------------------------

# Path to oh-my-zsh installation
export ZSH="$HOME/.oh-my-zsh"

# Theme
ZSH_THEME="teodc"

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
  composer
  docker
  docker-compose
  gh
  kubectl
  pip
  poetry
  terraform
  z
  zsh-autosuggestions
)

# Enable the zsh-completions plugin
fpath+=${ZSH_CUSTOM:-${ZSH:-~/.oh-my-zsh}/custom}/plugins/zsh-completions/src

source $ZSH/oh-my-zsh.sh

# ------------------------------------------------------------------------------
# User Configuration
# ------------------------------------------------------------------------------

export PATH="$PATH:/usr/local/bin:/usr/local/sbin:/opt/homebrew/bin:/opt/homebrew/sbin"
export MANPATH="$MANPATH:/usr/local/manh"
export LANG=en_US.UTF-8
#export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/id_ed25519"
export XDG_CONFIG_HOME="$HOME/.config"
export CLICOLOR=1
export HOMEBREW_GITHUB_API_TOKEN=SECRET
export GOPATH="$HOME/Workspace/go"

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR="vim"
else
  export EDITOR="vim"
fi

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

alias zshconf="vim ~/.zshrc"
alias sshconf="vim ~/.ssh/config"
alias vimconf="vim ~/.vimrc"
alias tmuxconf="vim ~/.tmux.conf"
alias gitconf="vim ~/.gitconfig"
alias alacrittyconf="vim ~/.config/alacritty/alacritty.yml"

alias h="history"
alias hg="history | grep"
alias hgi="history | grep -i"

alias cat="bat"

alias ls="lsd"
alias ll="lsd -l"
alias lst="lsd --tree"
alias llt="lsd -l --tree"

alias v="vim"
alias nv="nvim"
#alias vim="nvim"

alias rsync-cp="rsync -avz --progress -h"
alias rsync-mv="rsync -avz --progress -h --remove-source-files"
alias rsync-update="rsync -avzu --progress -h"
alias rsync-sync="rsync -avzu --delete --progress -h"

alias tw="task"

alias lzg="lazygit"
alias lzd="lazydocker"

alias artisan="php artisan"
alias tinker="php artisan tinker"
alias symfony="~/.symfony/bin/symfony"

alias py="python3"
alias pypip="python3 -m pip"
alias pyvenv="python3 -m venv"

alias dc="docker compose"
alias dce="docker compose exec"

