# =============================================================================
# File System Navigation & Management
# =============================================================================
# Directory Navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"

# Directory Operations
alias md="mkdir -p"  # Create directories and their parents
alias rmd="rmdir"    # Remove empty directories
alias rmf="rm -rf"   # Force delete files and directories
alias cpv="cp -v"    # Copy with verbose output
alias mvv="mv -v"    # Move with verbose output

# Listing & Display
alias ls="ls --color=auto"           # Colored output to differentiate by file type
alias l="ls -CF"                     # Display in columns with type indicators
alias la="ls -A"                     # Show hidden files (excluding . and ..)
alias ll="ls -lah --color=auto"      # Long listing with human-readable sizes
alias lt="ls -lt --color=auto"       # Sort by modification time (newest first)

# Custom Functions
# Create a directory and enter it
mkcd() { mkdir -p "$1" && cd "$1"; }

# Find large files
bigfiles() { find . -type f -exec ls -lh {} + | awk '{print $5, $9}' | sort -hr | head -20; } 