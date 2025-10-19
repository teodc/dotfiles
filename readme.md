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

### Karabiner-Elements

```
cp karabiner/karabiner.json ~/.config/karabiner/
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

### zsh

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
cp zsh/.zshrc ~/
```

## 💰 Productivity Tips

### 🖥️ macOS Window Management

- Use `Amethyst` to tile windows with the `fullscreen` layout by default.
- Use `Karabiner-Elements` to open & jump to specific apps.
- Bind most used apps to their own key (to prevent any crappy cmd+tab cycling):
  - `shift+control+b`: Brave Browser
  - `shift+control+m`: Music
  - `shift+control+i`: IntelliJ IDEA
  - `shift+control+k`: Slack
  - `shift+control+c`: Discord
  - `shift+control+a`: ChatGPT
  - etc.
- Add an extra num-key binding to apps that are part of your dev workflow (for even faster switching):
  - `control+1`: Browser
  - `control+2`: Terminal
  - `control+3`: IDE
  - `control+4`: HTTP client
  - `control+5`: Database GUI
  - `control+6`: Notes

### ⌨ macOS Extra Config

- Auto hide the Dock & the menu bar.
- Speed up keyboard & vim better:
  ```
  defaults write -g ApplePressAndHoldEnabled -bool false
  defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
  defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
  ```
- Reduce some bothering animations:
  ```
  defaults write -g NSToolbarFullScreenAnimationDuration -float 0.1
  defaults write com.apple.dock autohide-time-modifier -float 0.1
  defaults write com.apple.dock autohide-delay -float 0.1
  defaults write com.apple.dock expose-animation-duration -float 0.1
  defaults write com.apple.finder DisableAllAnimations -bool true
  killall Dock
  killall Finder
  ```
- In `Settings > Accessibility > Display`, enable `Reduce motion` and `Increase contrast`.
- Disable `Automatically rearrange Spaces based on most recent use`.

