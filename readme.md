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

### Alacritty

```
mkdir -p ~/.config/alacritty/themes
cp alacritty/alacritty.yml ~/.config/alacritty/
curl https://raw.githubusercontent.com/catppuccin/alacritty/main/catppuccin-mocha.toml -o ~/.config/alacritty/themes/
```

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

### git

```
cp git/.gitconfig ~/
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
...
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
cp yazi/init.lua ~/.config/yazi
curl https://raw.githubusercontent.com/catppuccin/yazi/main/themes/mocha.toml -o ~/.config/yazi/theme.toml
curl https://raw.githubusercontent.com/catppuccin/bat/main/themes/Catppuccin%20Mocha.tmTheme -o ~/.config/yazi/catppuccin_mocha.tmTheme
ya pack -a yazi-rs/plugins:full-border
vim ~/.config/yazi/theme.toml # Edit line 32
```

### zsh

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
cp zsh/.zshrc ~/
```

### App Store Apps

```
...
```

## 🖥️ macOS Window Management

How I improved my window management on macOS:

- Disable `Automatically rearrange Spaces based on most recent use`.
- Create a dedicated Space for each app (or type of app) in the `Mission Control` view.
- Assign each app to its own Space with the `Assign To` option from the Dock.
- Set the keyboard shortcuts to switch directly to Spaces: `Space 1`->`Option+1`, `Space 2`->`Option+2`, etc.
- Use `Amethyst` (or `Yabai`) to manage and tile windows.
- Default to Amethyst's `fullscreen` layout (and don't use Mac's "Full Screen").

This way, I can directly jump to a specific Space based on what I want to do.

I usually have my Spaces organized like this:

- Main screen:
    - `Space 1`: Main browser
    - `Space 2`: Terminal
    - `Space 3`: Code editor
    - `Space 4`: API client
    - `Space 5`: Database GUI
- Side screen:
    - `Space 6`: Communication tools
    - `Space 7`: Notes
    - `Space 8`: Music app
