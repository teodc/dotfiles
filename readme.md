# Dotfiles

My (almost) up-to-date dotfiles and list of software/packages I use.

> I use the [Catppuccin](https://github.com/catppuccin/catppuccin) theme wherever it's available.

## ⚠️ Prerequesites

### Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Nerd Fonts

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
brew install --cask font-jetbrainsmono-nerd-font
```

## 🛠 Configs

### zsh

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-completions $ZSH_CUSTOM/plugins/zsh-completions
cp zsh/teodc.zsh-theme $ZSH_CUSTOM/themes
cp zsh/.zshrc ~
```

### Alacritty

```
cp alacritty/alacritty.yml ~/.config/alacritty
git clone https://github.com/catppuccin/alacritty.git ~/.config/alacritty/catppuccin
```

### tmux

```
cp tmux/.tmux.conf ~
mkdir -p ~/.config/tmux/themes
cp tmux/themes/catppuccin ~/.config/tmux/themes
```

### vim

```
cp vim/.vimrc ~
mkdir ~/.vim/colors
curl https://raw.githubusercontent.com/catppuccin/vim/main/colors/catppuccin_mocha.vim -o ~/.vim/colors/catppuccin_mocha.vim
mkdir -p ~/.vim/pack/plugins/start
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline
curl https://raw.githubusercontent.com/catppuccin/vim/main/autoload/lightline/colorscheme/catppuccin_mocha.vim -o ~/.vim/pack/plugins/start/lightline/autoload/lightline/colorscheme/catppuccin_mocha.vim
```

### git

```
cp git/.gitconfig ~/.gitconfig
```

> To set the signing key check how to [manage commit signature verification](https://docs.github.com/en/authentication/managing-commit-signature-verification)

### lsd

```
cp lsd/config.yaml ~/.config/lsd
```

### bat

```
mkdir -p "$(bat --config-dir)/themes"
curl https://raw.githubusercontent.com/catppuccin/bat/main/Catppuccin-mocha.tmTheme -o "$(bat --config-dir)/themes/Catppuccin-mocha.tmTheme"
bat cache --build
cp bat/config $(bat --config-dir)
```

### lf

```
mkdir ~/.config/lf
cp lf/* ~/.config/lf
```

### Amethyst

```
cp amethyst/.amethyst.yml ~
```

### Lazygit

```
mkdir ~/.config/lazygit
cp lazygit/* ~/.config/lazygit
```

### Nvim

> WIP

```
brew install checkmake
brew install dotenv-linter
brew install luarocks
luarocks install lanes
markuplint?
```

## 📦 Packages & Apps

### Homebrew Packages

> Install with `brew install <package_name>`

```
ansible
awscli
bat
black
boundary
certbot
composer
coreutils
curl
diff-so-fancy
dnsmasq
docker-clean
eksctl
elixir
fd
flake8
fzf
gh
git
gnu-sed
gnupg
go
htop
iperf3
isort
jq
kubectx
lazydocker
lazygit
lf
lsd
nmap
node
php
php-cs-fixer
phpstan
pnpm
psalm
pwgen
pylint
python
ripgrep
rust
screen
ssh
task
tcpdump
terraform
tmux
trash-cli
tree
unzip
vault
vim
vit
wget
zsh
```

### Homebrew Cask Apps

> Install with `brew install --cask <app_name>`

```
alacritty
amethyst
beamer
brave-browser
cyberduck
discord
docker
firefox
github
google-chrome
google-drive
grammarly
grammarly-desktop
iina
insomnia
ipvanish-vpn
macs-fan-control
obs
plex-media-server
sequel-ace
skype
slack
sloth
spacelauncher
sublime-text
tableplus
the-unarchiver
transmission
visual-studio-code
vlc
zoom
```

### App Store Apps

```
EasyRes
ReadKit
Simplenote
Twitter
```

## 💰 macOS Productivity Tips

How I improved my window management on macOS:

- Disable `Automatically rearrange Spaces based on most recent use`.
- Create a dedicated Space for each app or app type in the `Mission Control` view.
- Assign each app to its own Space with the `Assign To` option from the Dock.
- Set the keyboard shortcuts to switch directly to Spaces: `Space 1`->`Option+1`, `Space 2`->`Option+2`, etc.
- Use `Amethyst` (or `Yabai`) to tile and manage windows.
- Use the `fullscreen` layout as default layout (and never use "Full Screen").

This way, I can directly jump to a specific Space depending on what I want to do. I usually have my Spaces organized like this:

- Main screen:
  - `Space 1`: Main browser & notes
  - `Space 2`: Terminal
  - `Space 3`: Code editor
  - `Space 4`: API client
  - `Space 5`: Database GUI
- Side screen:
  - `Space 6`: Communication tools
  - `Space 7`: Dev browser
  - `Space 8`: Music app

Enjoy!
