export ZSH="$HOME/.oh-my-zsh"
export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin"
export MANPATH="/usr/local/man:$MANPATH"
export GOPATH="$HOME/Workspace/go"
export SSH_KEY_PATH="~/.ssh/id_rsa"
export LANG=en_US.UTF-8
export CLICOLOR=1
#export ARCHFLAGS="-arch x86_64"
export UPDATE_ZSH_DAYS=7
export HOMEBREW_GITHUB_API_TOKEN=abcd1234

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

ZSH_THEME="teodc"
ENABLE_CORRECTION="true"
COMPLETION_WAITING_DOTS="true"
HIST_STAMPS="yyyy-mm-dd"
#CASE_SENSITIVE="true"
#HYPHEN_INSENSITIVE="true"
#DISABLE_AUTO_UPDATE="true"
#DISABLE_LS_COLORS="true"
#DISABLE_AUTO_TITLE="true"
#DISABLE_UNTRACKED_FILES_DIRTY="true"
#ZSH_CUSTOM=/path/to/custom/folder

plugins=(ansible aws brew composer docker docker-compose git github go golang homestead kubectl laravel mix node npm npx osx redis-cli rsync ssh-agent sublime supervisor terraform tmux vagrant vscode)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all
unsetopt correct

alias zshconf="vim ~/.zshrc"
alias sshconf="vim ~/.ssh/config"

alias ls='ls -hGF'
alias lsa='ls -ahGF'
alias ll='ls -lhGF'
alias lla='ls -lahGF'

alias artisan="php artisan"
alias tinker="php artisan tinker"
