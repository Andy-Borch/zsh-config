# System Architecture

This repository is designed to provide a portable and reproducible macOS development environment focusing on Zsh and iTerm2.

## Components

### 1. Homebrew (`Brewfile`)
Homebrew acts as the primary package manager. The `Brewfile` tracks:
- **Core Utilities**: `coreutils` (for GNU `ls` support).
- **Zsh Enhancements**: `zsh-syntax-highlighting`, `zsh-autosuggestions`.
- **Applications**: `iterm2`.

### 2. Shell Configuration (`shell/`)
- **.zshrc**: The main interactive shell configuration. It initializes Oh My Zsh, sets the Powerlevel10k theme, configures plugins, and sets up custom aliases and syntax highlighting styles.
- **.zprofile**: Handles login shell environment setup, specifically initializing Homebrew's environment.
- **.p10k.zsh**: Contains the highly granular configuration for the Powerlevel10k prompt.

### 3. Terminal Configuration (`iterm2/`)
- **com.googlecode.iterm2.plist**: An export of iTerm2 settings, allowing for consistent terminal behavior across machines.
- **everforest-dark.itermcolors**: A specific color preset that matches the intended aesthetic.

### 4. Automation (`setup.sh`)
The bootstrap script automates:
1. Dependency verification (Homebrew).
2. Installation of Homebrew packages via `brew bundle`.
3. Installation of Oh My Zsh and Powerlevel10k.
4. Deployment of configuration files to the user's home directory.

## Data Flow
1. `setup.sh` is executed.
2. `Brewfile` is processed by Homebrew.
3. Oh My Zsh and P10k are cloned into `~/.oh-my-zsh`.
4. Config files from `shell/` are copied to `~/`.
5. iTerm2 is manually configured to point to `iterm2/` files.
