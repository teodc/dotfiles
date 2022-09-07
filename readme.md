# Dotfiles

My almost up-to-date dotfiles (like in any dotfiles repo)

## zsh

```
cp zsh/.zshrc ~
cp zsh/teodc.zsh-theme ~/.oh-my-zsh/themes
```

> Install oh-my-zsh with `sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

## iTerm2

Download the `iterm/teodc.json` file.

Open iTerm2 and go to: `Preferences -> Profiles -> Other Actions... -> Import JSON Profiles...`

## tmux

```
cp tmux/.tmux.conf ~
```

> Install Hack Nerd Fonts with `brew tap homebrew/cask-fonts && brew install --cask font-hack-nerd-font`

## vim

```
cp vim/.vimrc ~
cp vim/.vim/colors/*.vim ~/.vim/colors
cp vim/.vim/pack/plugins/start/lightline/autoload/lightline/colorscheme/*.vim ~/.vim/pack/plugins/start/lightline/autoload/lightline/colorscheme
```

> Install lightline.vim with ` git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline`

## git

```
cp git/.gitconfig ~/.gitconfig
```

