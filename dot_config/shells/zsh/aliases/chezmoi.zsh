# =============================================================================
# ChezMoi Management
# =============================================================================
alias chezadd="chezmoi add ~/.zshrc && chezmoi apply"  # Track & apply .zshrc changes
alias chezedit="chezmoi edit ~/.zshrc"                # Edit tracked .zshrc file
alias chezapply="chezmoi apply"                       # Apply all tracked changes
alias chezdiff="chezmoi diff"                         # Show differences
alias chezstatus="chezmoi status"                     # Show tracking status
alias chezman="chezmoi managed"                       # List tracked files
alias chezcd="cd $(chezmoi source-path)"              # Navigate to source directory
alias chezbackup="chezmoi apply && chezmoi update"    # Apply and update state

# ChezMoi Secret Management
function chezget() { chezmoi secret keyring get --service="$1" --user="$USER"; }
function chezset() { chezmoi secret keyring set --service="$1" --user="$USER"; }
function chezdel() { chezmoi secret keyring delete --service="$1" --user="$USER"; } 