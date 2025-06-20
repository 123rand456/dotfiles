# PATH management functions

# when you want to use system commands by default; custom scripts as fallback
path_append() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

# when you want to use your custom scripts
path_prepend() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$1${PATH:+":$PATH"}"
    fi
}

# System paths (in order of precedence)
path_prepend "/opt/homebrew/bin"      # Homebrew
path_prepend "/usr/local/bin"         # Local system binaries
path_prepend "/usr/bin"               # System binaries
path_prepend "/bin"                   # Core system binaries
path_prepend "/usr/sbin"              # System administration
path_prepend "/sbin"                  # System administration

# User paths
path_prepend "$HOME/.local/share/chezmoi/bin"  # ChezMoi scripts
path_prepend "$HOME/.local/bin"                # User's local binaries
path_prepend "$HOME/go/bin"                    # Go binaries
path_prepend "$HOME/.cargo/bin"                # Cargo binaries

# Language-specific paths
if [ -n "$JAVA_HOME" ]; then
    path_prepend "$JAVA_HOME/bin"              # Java
fi

# Python paths (if needed)
if [ -d "$HOME/Library/Python" ]; then
    for python_version in $HOME/Library/Python/*/bin; do
        path_prepend "$python_version"
    done
fi

# Completions setup
if [ -d "$HOME/.local/share/zsh/completions" ]; then
    fpath=("$HOME/.local/share/zsh/completions" $fpath)
fi

# Set up eza completions
if [ -d "$HOME/.cargo/bin" ]; then
    # Create completions directory if it doesn't exist
    mkdir -p "$HOME/.local/share/zsh/completions"
    
    # Generate eza completions
    if command -v eza >/dev/null 2>&1; then
        eza --generate-completion zsh > "$HOME/.local/share/zsh/completions/_eza"
    fi
fi

# Load completions
autoload -Uz compinit
compinit 