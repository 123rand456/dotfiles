# =============================================================================
# System & Performance
# =============================================================================
alias cls="clear && printf '\e[3J'"  # Clear terminal + scrollback buffer
alias h="history"                    # Show command history
alias df="df -h"                     # Show disk usage in human-readable format
alias free="free -h"                 # Show memory usage
alias top="htop"                     # Use htop if installed

# Network Functions
localip() { ipconfig getifaddr en0; }  # Get local IP
myip() { curl -s ifconfig.me; echo; }  # Show public IP 