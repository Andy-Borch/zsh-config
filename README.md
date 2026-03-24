# Zsh Replica Setup

This repo captures my Zsh + iTerm2 environment so it can be reproduced on another macOS machine.

## What this includes

- `shell/.zshrc` - main Zsh configuration
- `shell/.zprofile` - login shell initialization
- `shell/.p10k.zsh` - Powerlevel10k prompt config
- `Brewfile` - Homebrew formulas/casks required by the setup
- `requirements.txt` - human-readable dependency list
- `setup.sh` - bootstrap script to install dependencies and copy shell files
- `iterm2/com.googlecode.iterm2.plist` - iTerm2 preferences export
- `iterm2/everforest-dark.itermcolors` - iTerm2 color preset
- `iterm2/andy_borch_iterm2_config_backup.zip` - backup archive of prior terminal config files

## Replicate on a new machine

```bash
git clone https://github.com/Andy-Borch/zsh-config.git
cd zsh-config
./setup.sh
```

`setup.sh` will:

1. Install Homebrew dependencies from `Brewfile`
2. Install Oh My Zsh (if missing)
3. Install Powerlevel10k (if missing)
4. Copy shell configs into your home directory (`~/.zshrc`, `~/.zprofile`, `~/.p10k.zsh`)

## iTerm2 setup

After running `setup.sh`:

1. Open iTerm2 -> Settings -> General -> Preferences
2. Point preferences to `iterm2/com.googlecode.iterm2.plist` (or import settings manually)
3. Import `iterm2/everforest-dark.itermcolors` via Profiles -> Colors -> Color Presets -> Import

## Dependencies in this setup

Homebrew formulas:

- `coreutils` (provides `gls`, used in aliases)
- `zsh-syntax-highlighting`
- `zsh-autosuggestions`

Homebrew cask:

- `iterm2`

Non-brew components:

- Oh My Zsh
- Powerlevel10k

## Notes

- Existing local shell files on a target machine will be overwritten by `setup.sh`.
- If you want a safer migration, back up existing dotfiles first.
