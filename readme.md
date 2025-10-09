# Dotfiles

## 🧰 Prerequisites

### Clone repo

```
git clone git@github.com:teodc/dotfiles.git
cd dotfiles
```

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

How to (almost) get rid of brainless alt+tab:
- Auto hide the Dock & the menu bar (not necessarly required but will prevent you from looking like a cretin)
- Disable `Automatically rearrange Spaces based on most recent use`
- Create a dedicated Space for each app (or type of app) in the `Mission Control` view
- Assign each app to its own Space with the `Assign To` option from the Dock
- Define keyboard shortcuts to switch to Spaces: `Space [1-9]`->`Ctrl+[1-9]`
- Use `Amethyst` to manage and tile windows
- Use Amethyst's `fullscreen` layout by default (and never use Mac's "Full Screen")
- Now you can jump to the app you want by simply switching to its Space, amazing

My typical Spaces setup:
- Monitor 1:
  - `Space 1`: Browser
  - `Space 2`: Terminal
  - `Space 3`: IDE
  - `Space 4`: HTTP client
  - `Space 5`: Database GUI
- Monitor 2:
  - `Space 6`: Chat
  - `Space 7`: Notes
  - `Space 8`: AI
  - `Space 9`: Music

### ⌨ macOS Extra Config

Speed up keyboard & vim better:
```
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
```

Reduce some bothering animations:
```
defaults write -g NSToolbarFullScreenAnimationDuration -float 0.1
defaults write com.apple.dock autohide-time-modifier -float 0.1
defaults write com.apple.dock autohide-delay -float 0.1
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.finder DisableAllAnimations -bool true
killall Dock
killall Finder
```

In `Settings > Accessibility > Display`, enable `Reduce motion` and `Increase contrast`.

