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

### zsh

```
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
cp zsh/.zshrc ~/
```

### Alacritty

```
cp alacritty/alacritty.yml ~/.config/alacritty/
git clone https://github.com/catppuccin/alacritty.git ~/.config/alacritty/catppuccin
```

### tmux

```
mkdir -p ~/.config/tmux
cp tmux/tmux.conf ~/.config/tmux/
mkdir -p ~/.tmux/plugins/
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

### vim

```
cp vim/.vimrc ~/
mkdir -p ~/.vim/colors
curl https://raw.githubusercontent.com/catppuccin/vim/main/colors/catppuccin_mocha.vim -o ~/.vim/colors/catppuccin_mocha.vim
mkdir -p ~/.vim/pack/plugins/start
git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline
curl https://raw.githubusercontent.com/catppuccin/vim/main/autoload/lightline/colorscheme/catppuccin_mocha.vim -o ~/.vim/pack/plugins/start/lightline/autoload/lightline/colorscheme/catppuccin_mocha.vim
mkdir -p ~/.vim/backups
mkdir -p ~/.vim/swaps
mkdir -p ~/.vim/undo
```

### git

```
cp git/.gitconfig ~/
```

### lsd

```
mkdir -p ~/.config/lsd
cp lsd/config.yaml ~/.config/lsd/
```

### bat

```
mkdir -p "$(bat --config-dir)/themes"
curl https://raw.githubusercontent.com/catppuccin/bat/main/Catppuccin-mocha.tmTheme -o "$(bat --config-dir)/themes/Catppuccin-mocha.tmTheme"
bat cache --build
cp bat/config $(bat --config-dir)
```

### yazi

```
mkdir -p ~/.config/yazi
cp yazi/yazi.toml ~/.config/yazi
curl https://raw.githubusercontent.com/catppuccin/yazi/main/themes/mocha.toml -o ~/.config/yazi/theme.toml
curl https://raw.githubusercontent.com/catppuccin/bat/main/Catppuccin-mocha.tmTheme -o ~/.config/yazi/Catppuccin-mocha.tmTheme
```

### Amethyst

```
cp amethyst/.amethyst.yml ~/
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

### Starship

```
mkdir -p ~/.config/starship
cp starship/starship.toml ~/.config/starship/
```

### Sublime Text

```
# From the app: Preferences > Tools > Install Package Control
git clone https://github.com/catppuccin/sublime-text.git ~/Library/Application\ Support/Sublime\ Text/Packages/Catppuccin
cp sublime-text/Preferences.sublime-settings ~/Library/Application\ Support/Sublime\ Text/Packages/User/Preferences.sublime-settings
```

### Zed

```
mkdir -p ~/.config/zed
cp zed/* ~/.config/zed/
```

> Extensions: HTML, Catppuccin Themes, Dockerfile, TOML, Docker Compose, Lua, Basher, Ruff

## Extra Apps

### Non-cask Apps

```
...
```

### App Store Apps

```
Simplenote
```

## 💰 macOS Productivity Tips

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
    - `Space 1`: Main browser & notes
    - `Space 2`: Terminal
    - `Space 3`: Code editor
    - `Space 4`: API client
    - `Space 5`: Database GUI
- Side screen:
    - `Space 6`: Communication tools
    - `Space 7`: Dev browser
    - `Space 8`: Music app

