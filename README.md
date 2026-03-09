# 鬼 dotfiles

Personal dotfiles with a Japanese aesthetic. Kanagawa Wave theme, minimal and clean.

## What's inside

```
dotfiles/
├── ghostty/config        # Ghostty terminal config
├── zsh/.zshrc            # Zsh configuration
├── zsh/aliases.zsh       # Shell aliases
├── fastfetch/config.jsonc # Fastfetch system info splash
└── install.sh            # Symlink installer
```

## Features

**Terminal (Ghostty)**
- Kanagawa Wave theme with transparency + blur
- Tab-integrated titlebar, underline cursor
- Splits (Cmd+D / Cmd+Shift+D) with vim-style navigation
- Quick terminal dropdown (Ctrl+`)
- Geist Sans Nerd font

**Shell (Zsh)**
- `鬼` prompt with git branch display
- Dynamic tab titles: `家 ホーム` at home, `道 folder` elsewhere
- zsh-autosuggestions + zsh-syntax-highlighting
- Shared history (10k entries, no dupes)
- Modern CLI replacements: eza, bat, rg, fd, dust, btop, delta

**Extras**
- Fastfetch system splash on terminal open
- Claude Code aliases (cc, ccc, ccr, ccp)
- Zoxide for smart directory jumping

## Install

```bash
git clone https://github.com/fabroos/dotfiles.git ~/dotfiles
cd ~/dotfiles
./install.sh
```

## Dependencies

Installed automatically via `install.sh`:

| Tool | Replaces |
|------|----------|
| eza | ls |
| bat | cat |
| ripgrep | grep |
| fd | find |
| dust | du |
| btop | top |
| delta | diff |
| zoxide | cd |
| fastfetch | neofetch |

## Font

Install [Geist Sans Nerd](https://github.com/ryanoasis/nerd-fonts) manually or via:

```bash
brew install --cask font-geist-mono-nerd-font
```
