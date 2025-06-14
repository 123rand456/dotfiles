# =============================================================================
# Shell Configuration
# =============================================================================
alias relzsh="source ~/.zshrc"        # Reload current shell session
alias reszsh="exec zsh"              # Replace current shell with new instance
alias zshconfig="nvim ~/.zshrc"      # Edit Zsh config
alias ohmyzsh="nvim ~/.oh-my-zsh"    # Edit Oh My Zsh config
alias nv="nvim"                      # Quick Neovim access
alias j="jobs -l"                    # Show background jobs
alias path="echo $PATH | tr ':' '\n'" # Show PATH in readable format 