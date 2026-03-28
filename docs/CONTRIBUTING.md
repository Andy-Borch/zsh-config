# Contributing to Zsh Replica Setup

Thank you for your interest in contributing to this project!

## How to Contribute

### Reporting Bugs
- If you find a bug in the `setup.sh` script or an issue with the configurations, please open an issue in the GitHub repository.
- Provide as much detail as possible, including your macOS version and any error messages.

### Suggesting Improvements
- Suggestions for new aliases, plugins, or improvements to the documentation are always welcome.

### Submitting Pull Requests
1. Fork the repository.
2. Create a new branch for your feature or bug fix: `git checkout -b feature/your-feature-name`.
3. Make your changes.
4. If you add new shell aliases or configurations, please update the documentation if necessary.
5. Commit your changes: `git commit -m "Add some feature"`.
6. Push to the branch: `git push origin feature/your-feature-name`.
7. Submit a pull request.

## Local Development
To test changes to the `setup.sh` script:
- You can run it on your local machine, but be aware it will overwrite your existing `.zshrc`, `.zprofile`, and `.p10k.zsh` files.
- It is recommended to back up your current configuration before testing any changes.

## Code Style
- Keep the `setup.sh` script clean and use standard Bash practices.
- For shell configurations, try to keep aliases and functions well-commented.
