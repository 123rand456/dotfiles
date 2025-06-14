# =============================================================================
# ZSH Configuration Loader
# =============================================================================

# Load all alias files
source "${HOME}/.config/shells/zsh/aliases/filesystem.zsh"
source "${HOME}/.config/shells/zsh/aliases/development.zsh"
source "${HOME}/.config/shells/zsh/aliases/package.zsh"
source "${HOME}/.config/shells/zsh/aliases/system.zsh"
source "${HOME}/.config/shells/zsh/aliases/shell.zsh"
source "${HOME}/.config/shells/zsh/aliases/chezmoi.zsh"

# Load Git aliases
source "${HOME}/.config/git/aliases/git.zsh"

# Load functions
for function_file in ${HOME}/.config/functions/*; do
    source "$function_file"
done

# Add scripts to PATH
export PATH="${HOME}/.config/scripts:${PATH}"
export PATH="${HOME}/.config/git/scripts:${PATH}"
export PATH="${HOME}/.config/system/scripts:${PATH}" 