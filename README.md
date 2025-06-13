# Chizubo does dotfiles

This repository contains my personal dotfiles configuration, managed using [ChezMoi](https://www.chezmoi.io/). These configurations are designed to create a productive and efficient development environment.

## Overview

This dotfiles setup includes configurations for:
- Shell (Zsh with Oh My Zsh)
- Git
- Neovim
- Various development tools and aliases

## Installation

1. Install ChezMoi:
```bash
brew install chezmoi
```

2. Apply the dotfiles:
```bash
chezmoi init --apply https://github.com/yourusername/dotfiles.git
```

## Structure

- `dot_oh-my-zsh/` - Oh My Zsh customizations
- `dot_zshrc` - Zsh configuration
- Various other dotfiles and configurations

## Useful Aliases

Some of the most used aliases include:
- `relzsh` - Reload Zsh configuration
- `chezadd` - Track and apply changes to .zshrc

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

Inspiration and resources from:
- [The Perfect Development Environment](https://cpojer.net/posts/the-perfect-development-environment)
- [Dotfiles Tutorial](https://dotfiles.github.io/tutorials/)
- [Holman's Dotfiles](https://github.com/holman/dotfiles)
- [Ryan Bates' Dotfiles](https://github.com/ryanb/dotfiles)