# =============================================================================
# Homebrew Helper Functions
# =============================================================================

# Update Homebrew and all installed packages
brew-up() {
    echo "Updating Homebrew..."
    brew update
    echo "Upgrading packages..."
    brew upgrade
    echo "Cleaning up..."
    brew cleanup
    echo "Checking system..."
    brew doctor
}

# Install a package and its dependencies
brew-install() {
    brew install "$1"
    brew link "$1"
}

# Uninstall a package and its dependencies
brew-uninstall() {
    brew uninstall "$1"
    brew cleanup
}

# List all installed packages
brew-list() {
    brew list
}

# Search for a package
brew-search() {
    brew search "$1"
}

# Show package information
brew-info() {
    brew info "$1"
}

# Update a specific package
brew-upgrade() {
    brew upgrade "$1"
}

# Clean up old versions
brew-cleanup() {
    brew cleanup
    brew doctor
} 