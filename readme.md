# Dotfiles

## 🧰 Prerequisites

### Homebrew

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
cp Brewfile ~/
brew bundle install --file=~/Brewfile
```

### Oh My Zsh

```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

## 🛠 Installations

### Amethyst

```
cp amethyst/.amethyst.yml ~/
```

### bat

```
mkdir -p "$(bat --config-dir)/themes"
cp bat/config $(bat --config-dir)
curl https://raw.githubusercontent.com/catppuccin/bat/main/themes/Catppuccin%20Mocha.tmTheme -o "$(bat --config-dir)/themes/"
bat cache --build
```

### Ghostty

```
mkdir -p ~/.config/ghostty
cp ghostty/config ~/.config/ghostty/
```

### git

```
cp git/.gitconfig ~/
cp git/.gitignore ~/
```

### IdeaVim

```
cp ideavim/.ideavimrc ~/
```

### Lazygit

```
mkdir -p ~/.config/lazygit
cp lazygit/config.yml ~/.config/lazygit/
```

### lsd

```
mkdir -p ~/.config/lsd
cp lsd/config.yaml ~/.config/lsd/
```

### nvim

```
cp -R nvim/ ~/.config/
```

### ssh

```
cp ssh/config ~/.ssh/
```

### Starship

```
mkdir -p ~/.config/starship
cp starship/starship.toml ~/.config/starship/
```

### Sublime Text

```
# Preferences > Tools > Install Package Control
git clone https://github.com/catppuccin/sublime-text.git ~/Library/Application\ Support/Sublime\ Text/Packages/Catppuccin
cp sublime-text/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings
```

### tmux

```
mkdir -p ~/.config/tmux
cp tmux/tmux.conf ~/.config/tmux/
# <prefix> + I
```

### vim

```
cp vim/.vimrc ~/
mkdir -p ~/.vim/colors
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/undo
# PlugInstall
```

### yazi

```
mkdir -p ~/.config/yazi
cp yazi/yazi.toml ~/.config/yazi
cp yazi/theme.toml ~/.config/yazi
cp yazi/keymap.toml ~/.config/yazi
cp yazi/init.lua ~/.config/yazi
ya pack -a yazi-rs/flavors:catppuccin-mocha
ya pack -a yazi-rs/plugins:full-border
```

### zed

```
mkdir -p ~/.config/zed
cp zed/* ~/.config/zed
```

### zsh

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
cp zsh/.zshrc ~/
```

## 💰 Productivity Tips

### 🖥️ macOS Window Management

- Auto hide the Dock (required not to burn in hell)
- Disable `Automatically rearrange Spaces based on most recent use`
- Create a dedicated Space for each app (or type of app) in the `Mission Control` view
- Assign each app to its own Space with the `Assign To` option from the Dock
- Define keyboard shortcuts to switch to Spaces: `Space [1-9]`->`Ctrl+[1-9]`
- Use `Amethyst` to manage and tile windows
- Use only Amethyst's `fullscreen` layout (and don't use Mac's "Full Screen")

Typical Spaces setup:
- `Space 1`: Brave
- `Space 2`: Ghostty
- `Space 3`: Zed
- `Space 4`: HTTPie
- `Space 5`: TablePlus
- `Space 6`: Legcord
- `Space 7`: Simplenote
- `Space 8`: ChatGPT

### ⌨ macOS Keyboard

```
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
```
