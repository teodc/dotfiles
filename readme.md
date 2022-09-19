# Dotfiles

My almost up-to-date dotfiles and list of stuff I use.

> I use the [Catppuccin](https://github.com/catppuccin/catppuccin) theme wherever it's available.

## ⚠️ Prerequesites

### Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Hack Nerd Fonts

```
brew tap homebrew/cask-fonts
brew install --cask font-hack-nerd-font
```

## 🛠 Configs

### zsh

```
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp zsh/.zshrc ~
cp zsh/teodc.zsh-theme "$ZSH_CUSTOM/themes"
```

### iTerm2

- Get the `iterm/teodc.json` file.
- Open iTerm2 and go to: `Preferences` -> `Profiles` -> `Other Actions...` -> `Import JSON Profiles...`

### tmux

```
cp tmux/.tmux.conf ~
```

### vim

```
cp vim/.vimrc ~
mkdir ~/.vim/colors
curl https://raw.githubusercontent.com/catppuccin/vim/main/colors/catppuccin_macchiato.vim -o ~/.vim/colors/catppuccin_macchiato.vim
mkdir -p ~/.vim/pack/plugins/start
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline
curl https://raw.githubusercontent.com/catppuccin/vim/main/autoload/lightline/colorscheme/catppuccin_macchiato.vim -o ~/.vim/pack/plugins/start/lightline/autoload/lightline/colorscheme/catppuccin_macchiato.vim
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
curl https://raw.githubusercontent.com/catppuccin/bat/main/Catppuccin-macchiato.tmTheme -o "$(bat --config-dir)/themes/Catppuccin-macchiato.tmTheme"
bat cache --build
cp bat/config $(bat --config-dir)
```

### lf

```
mkdir ~/.config/lf
cp lf/* ~/.config/lf
```

## Amethyst

```
cp amethyst/.amethyst.yml ~
```

## 📦 Packages & Apps

### Homebrew Packages

> Install with `brew install <package_name>`

```
ansible
awscli
bat
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
fzf
gh
git
gnupg
go
htop
iperf3
jq
kubectx
lazydocker
lazygit
lf
lsd
nmap
node
php-cs-fixer
php
pwgen
python
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
yarn
zsh
```

### Homebrew Cask Apps

> Install with `brew install --cask <app_name>`

```
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
insomnia
ipvanish-vpn
iterm2
macs-fan-control
obs
plex-media-server
sequel-ace
skype
slack
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
LINE
Pocket
Simplenote
Twitter
```

## 💰 macOS Productivity Tips

My way to waste less time using my mouse or `Cmd+Tab` on macOS.

- Disable `Automatically rearrange Spaces based on most recent use`.
- Create a dedicated Space for each app or app type in the `Mission Control` view.
- Assign each app to its own Space with the `Assign To` option from the Dock.
- Set the keyboard shortcuts to switch directly to Spaces. `Space 1` -> `Ctrl+1`, `Space 2` -> `Ctrl+2`, etc.
- Use `Amethyst` or `Yabai` to tile and manage windows.
- Fullscreen as many windows as possible (and not "Full Screen").

That way, I can directly jump to a specific Space depending on what I want to do. I usually set my Spaces like this:
- `Space 1`: Main browser (`Chrome`/`Firefox`) & notes (`Sublime Text`/`Simplenote`)
- `Space 2`: Terminal (`iTerm2`)
- `Space 3`: Code editor (`VS Code`)
- `Space 4`: API client (`Insomnia`/`Postman`)
- `Space 5`: Database GUI (`TablePlus`/`Sequel Ace`)
- `Space 6`: Communication tools (`Discord`/`Slack`/`Skype`)
- `Space 7`: Dev browser (`Brave`)

You're welcome!
