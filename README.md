# Zsh Replica Setup

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This repository provides a streamlined way to replicate a powerful and visually appealing Zsh + iTerm2 development environment on a new macOS machine.

## ✨ Features

- **Oh My Zsh Integration**: Built on the robust Oh My Zsh framework.
- **Powerlevel10k Prompt**: A fast and highly customizable Zsh theme for developers.
- **Enhanced Syntax Highlighting**: Custom color schemes for commands, aliases, and more.
- **GNU `ls` with One Dark Pro Colors**: Improved directory listings using `coreutils` and a custom `LS_COLORS` configuration.
- **Useful Aliases**: Pre-configured aliases for common operations (e.g., `ls`, `ll`, `la`).
- **Automated Bootstrap**: A simple `setup.sh` script to handle dependencies and configuration deployment.
- **iTerm2 Integration**: Pre-configured preferences and color schemes included.

## 🚀 Quick Start (Replication)

To set up this environment on a new machine:

1. **Clone the repository**:
   ```bash
   git clone https://github.com/Andy-Borch/zsh-config.git
   cd zsh-config
   ```

2. **Run the setup script**:
   ```bash
   ./setup.sh
   ```

   **Note**: `setup.sh` will install Homebrew (if missing), fetch dependencies via `Brewfile`, install Oh My Zsh and Powerlevel10k, and copy configuration files to your home directory (`~/.zshrc`, `~/.zprofile`, `~/.p10k.zsh`). **Existing files will be overwritten.**

3. **Restart your terminal** or run `source ~/.zshrc`.

## 🖥️ iTerm2 Setup

After running the setup script, follow these steps to configure iTerm2:

1. **Open iTerm2 Settings**: `Cmd + ,` or `Settings` from the menu.
2. **Import General Preferences**:
   - Go to `General` -> `Preferences`.
   - Select "Load preferences from a custom folder or URL".
   - Point it to the `iterm2/` directory in this repo (or use the provided `.plist`).
3. **Import Color Preset**:
   - Go to `Profiles` -> `Colors`.
   - Click `Color Presets...` -> `Import`.
   - Select `iterm2/everforest-dark.itermcolors`.

## 📦 What's Included?

| Component | Path | Description |
| :--- | :--- | :--- |
| **Zsh Config** | `shell/.zshrc` | Main interactive shell initialization. |
| **Zsh Profile** | `shell/.zprofile` | Login shell environment (Homebrew path). |
| **P10k Config** | `shell/.p10k.zsh` | Granular prompt styling and behavior. |
| **Homebrew** | `Brewfile` | List of formulas and casks (`coreutils`, `iterm2`, etc.). |
| **iTerm2 Settings** | `iterm2/*.plist` | Terminal preferences export. |
| **iTerm2 Theme** | `iterm2/*.itermcolors` | Everforest Dark color preset. |

## 🛠️ Customization

- **Aliases**: Add your own to `shell/.zshrc`.
- **Plugins**: Enable more Oh My Zsh plugins by modifying the `plugins=(git)` line in `shell/.zshrc`.
- **Theme**: Re-configure Powerlevel10k by running `p10k configure`.

## 📚 Further Information

- [System Architecture](docs/ARCHITECTURE.md)
- [Contributing Guidelines](docs/CONTRIBUTING.md)

## ⚖️ License

This project is licensed under the MIT License - see the LICENSE file for details.
