# Chizubo does dotfiles

This repository contains my personal dotfiles configuration, managed using [ChezMoi](https://www.chezmoi.io/). These configurations are designed to create a productive and efficient development environment.

## Overview

This dotfiles setup includes configurations for:
- Shell (Zsh with Oh My Zsh)
- Git
- Neovim
- Terminal Emulators (Alacritty, Kitty)
- Various development tools and aliases

## Directory Structure

```
chezmoi/
├── dot_config/           # Configuration files
│   ├── editors/         # Editor configs (vim, alacritty, kitty)
│   ├── shell/           # Shell configs (zsh, fish)
│   ├── git/            # Git configurations
│   └── system/         # System configurations
├── bin/                # Custom scripts and binaries
├── functions/          # Custom shell functions
└── scripts/            # Installation and setup scripts
```

## Installation

1. Install ChezMoi:
```bash
brew install chezmoi
```

2. Apply the dotfiles:
```bash
chezmoi init --apply https://github.com/yourusername/dotfiles.git
```

## Useful Aliases

Some of the most used aliases include:
- `relzsh` - Reload Zsh configuration
- `chezadd` - Track and apply changes to .zshrc
- `chezedit` - Edit tracked .zshrc file
- `chezapply` - Apply all tracked changes
- `chezdiff` - Show differences between current and chezmoi-managed files
- `chezstatus` - Show difference between current state and tracked files
- `chezman` - List all tracked files
- `chezcd` - Navigate to chezmoi source directory
- `chezbackup` - Apply and update chezmoi state

## ChezMoi Secret Management

For managing sensitive data:
```bash
chezget <service>  # Get a secret
chezset <service>  # Set a secret
chezdel <service>  # Delete a secret
```

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

Inspiration and resources from:
- [The Perfect Development Environment](https://cpojer.net/posts/the-perfect-development-environment)
- [Dotfiles Tutorial](https://dotfiles.github.io/tutorials/)
- [Holman's Dotfiles](https://github.com/holman/dotfiles)
- [Ryan Bates' Dotfiles](https://github.com/ryanb/dotfiles)