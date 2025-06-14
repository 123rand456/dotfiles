# =============================================================================
# Package Management
# =============================================================================
# Homebrew
alias bi="brew install"
alias bu="brew update && brew upgrade"

# Python Package Management
alias pi="pipx install"
alias pur="pip uninstall"

# Node.js Package Management
alias npmi="npm install"
alias npmu="npm update"
alias npmg="npm install -g"

# Docker
alias dn="docker network ls"
alias dc="docker compose"
alias dcu="docker compose up -d"
alias dcd="docker compose down"

# Conda
alias cin="conda install -y"            # Install package with auto-yes
alias cup="conda update -y conda"       # Update conda itself
alias clist="conda list"                # List packages in current environment
alias cenv="conda info --envs"          # List all conda environments
alias ccr="conda create -n"             # Create new environment
alias cact="conda activate"             # Activate environment
alias cdact="conda deactivate"          # Deactivate current environment
alias crem="conda remove --name"        # Remove an environment
alias csearch="conda search"            # Search for packages
alias cinfo="conda info"                # Display conda information
alias cclean="conda clean -a -y"        # Clean all conda caches
alias cexp="conda env export > environment.yml"  # Export environment
alias cimp="conda env create -f environment.yml"  # Import environment 