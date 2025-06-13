# PATH management functions
path_append() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="${PATH:+"$PATH:"}$1"
    fi
}

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

# Export the final PATH
export PATH 