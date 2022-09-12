# Dotfiles

My dotfiles (not really up-to-date, like in any dotfiles repo)

> I use [Catppuccin](https://github.com/catppuccin/catppuccin) wherever I can

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

> Install lightline.vim with `git clone https://github.com/itchyny/lightline.vim ~/.vim/pack/plugins/start/lightline`

## git

```
cp git/.gitconfig ~/.gitconfig
```

> Install diff-so-fancy with `brew install diff-so-fancy`
> To set the signing key check how to [manage commit signature verification](https://docs.github.com/en/authentication/managing-commit-signature-verification)

