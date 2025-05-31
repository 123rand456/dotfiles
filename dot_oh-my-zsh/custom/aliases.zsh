# Basic Navigation & File Management 
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias ~="cd ~"

alias md="mkdir -p" # create directoties and its parents 
alias rmd="rmdir" 
alias rmf="rm -rf" # force delete files and directories 
alias cpv="cp -v" # copy with verbose output
alias mvv="cp -v" # move with verbose output
alias ll="ls -la" 
alias l="ls -CF" # display output in columns, append symbols to indicate file types: `/` for directories,`*` for executable, `@` for symlinks
alias la="ls -A" # show hidden files but exclude .(current directory) and .. (parent directory)
alias ll="ls -lah --color=auto"  # Long listing format (permissions, owner, size, date) with hidden files in human readable sizes
alias lt="ls -lt --color=auto"  # Sort by modification time (newlest first)
alias ls="ls --color=auto" # colored output to differentiate by file type 

# Python Aliases
alias py="python3"
alias pipi="pip install"
alias venv="source venv/bin/activate"  # Activate virtual environment


# C/C++ Aliases
alias cc="cc -Wall -Wextra -Werror -g"  # Add debugging symbols
alias cco="cc -Wall -Wextra -O2"  # Optimize code (-O2 for speed)
alias ccs="cc -Wall -Wextra -Werror -fsanitize=address,undefined"  # Use AddressSanitizer
alias ccp="cc -Wall -Wextra -pedantic -std=c11"  # Ensure strict compliance with C11
alias run="cc -Wall -Wextra -Werror -o a.out && ./a.out"
alias runx="cc -Wall -Wextra -Werror -o a.out && chmod +x a.out && ./a.out"


# System & Performance
alias cls="clear"  # Clear the terminal
alias h="history"  # Show command history
alias df="df -h"  # Show disk usage in human-readable format
alias free="free -h"  # Show memory usage
alias top="htop"  # Use `htop` if installed (better than `top`)
alias cls="clear && printf '\e[3J'"  # Clear terminal + scrollback buffer


# Git Shortcut
alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gp="git push"
alias gpl="git pull"
alias gco="git checkout"
alias gcb="git checkout -b"
alias gb="git branch"
alias gd="git diff"
alias gl="git log --oneline --graph --decorate --all"
alias gr="git remote -v"
alias greset="git reset --hard HEAD"


# Productivity & Quick Access
alias relzsh="source ~/.zshrc"  # Reloads the current shell session with the updated .zshrc file; without opening new terminal 
alias reszsh="exec zsh" # Replaces the current shell with a new instance of zsh; e.g. after modifying $PARH or .zshenv
alias zshconfig="nvim ~/.zshrc"  # Quickly edit Zsh config
alias ohmyzsh="nvim ~/.oh-my-zsh"
alias nv="nvim"  # Open Neovim quickly
alias j="jobs -l"  # Show background jobs
alias path="echo $PATH | tr ':' '\n'"  # Show PATH in readable format


# Package Management
alias bi="brew install"
alias bu="brew update && brew upgrade"
alias pi="pipx install"
alias pur="pip uninstall"
alias npmi="npm install"
alias npmu="npm update"
alias npmg="npm install -g"
alias dn="docker network ls"
alias dc="docker compose"
alias dcu="docker compose up -d"
alias dcd="docker compose down"

# Java Build Tools
# Maven Aliases
alias mci="mvn clean install"               # Clean and install dependencies
alias mcp="mvn clean package"               # Clean and package the project
alias mcc="mvn clean compile"               # Clean and compile the project
alias mt="mvn test"                         # Run tests
alias mc="mvn clean"                        # Clean build artifacts
alias mdt="mvn dependency:tree"             # Display dependency tree
alias msr="mvn spring-boot:run"             # Run Spring Boot application
alias mej="mvn exec:java"                   # Execute Java main class
alias msite="mvn site"                      # Generate project site
alias mval="mvn validate"                   # Validate project structure

# Gradle Aliases
alias gb="gradle build"                     # Build the project
alias gc="gradle clean"                     # Clean build artifacts
alias gt="gradle test"                      # Run tests
alias gbr="gradle bootRun"                  # Run Spring Boot application
alias gdep="gradle dependencies"            # Display dependencies
alias gtasks="gradle tasks"                 # List available tasks
alias gw="./gradlew"                        # Use Gradle wrapper
alias gwb="./gradlew build"                 # Build with wrapper
alias gwc="./gradlew clean"                 # Clean with wrapper
alias gwt="./gradlew test"                  # Test with wrapper
alias gwbr="./gradlew bootRun"              # Run Spring Boot with wrapper

# JAR Package Commands
alias jrun="java -jar"                      # Run a JAR file (usage: jrun myapp.jar)
alias jlist="jar -tf"                       # List contents of JAR file
alias jextract="jar -xf"                    # Extract JAR file contents
alias jcreate="jar -cf"                     # Create JAR file (usage: jcreate myapp.jar *.class)
alias jcreate-manifest="jar -cfm"           # Create JAR with manifest (usage: jcreate-manifest myapp.jar manifest.txt *.class)
alias jinfo="jar -tf"                       # Show JAR file information
alias jverify="jarsigner -verify"           # Verify JAR signature
alias jcheck="java -jar -Xmx32m"            # Run JAR with limited memory for testing

# JAR Utility Functions
jarrun() { java -jar "$1" "${@:2}"; }       # Run JAR with arguments
jarinfo() { jar -tf "$1" | head -20; echo "... (showing first 20 entries)"; } # Show JAR contents preview

# Conda Aliases
alias cin="conda install -y"            # Install package with auto-yes
alias cup="conda update -y conda"       # Update conda itself
alias clist="conda list"                # List packages in current environment
alias cenv="conda info --envs"          # List all conda environments
alias ccr="conda create -n"             # Create new environment (usage: ccr myenv python=3.9)
alias cact="conda activate"             # Activate environment (usage: cact myenv)
alias cdact="conda deactivate"          # Deactivate current environment
alias crem="conda remove --name"        # Remove an environment (usage: crem myenv --all)
alias csearch="conda search"            # Search for packages
alias cinfo="conda info"                # Display conda information
alias cclean="conda clean -a -y"        # Clean all conda caches
alias cexp="conda env export > environment.yml"  # Export environment to file
alias cimp="conda env create -f environment.yml"  # Import environment from file


# ChezMoi Aliases
alias chezadd="chezmoi add ~/.zshrc && chezmoi apply"  # Track & apply .zshrc changes
alias chezedit="chezmoi edit ~/.zshrc"  # Edit tracked .zshrc file
alias chezapply="chezmoi apply"  # Apply all tracked changes
alias chezdiff="chezmoi diff"  # Show differences between current and chezmoi-managed files
alias chezstatus="chezmoi status"  # Show difference between the current state of your dotfiles and what ChezMoi is tracking.
alias chezman="chezmoi managed"  # Lists all files that ChezMoi is tracking; it does not check for modifications
alias chezcd="cd $(chezmoi source-path)" # Navigate to chezmoi source directory
alias chezbackup="chezmoi apply && chezmoi update"  # Apply and update chezmoi state

# ChezMoi Secret Management Aliases
function chezget() { chezmoi secret keyring get --service="$1" --user="$USER"; }
function chezset() { chezmoi secret keyring set --service="$1" --user="$USER"; }
function chezdel() { chezmoi secret keyring delete --service="$1" --user="$USER"; }


# Custom Functions 
# Create a directory and enter it
mkcd() { mkdir -p "$1" && cd "$1"; }

# Find large files
bigfiles() { find . -type f -exec ls -lh {} + | awk '{print $5, $9}' | sort -hr | head -20; }

# Get local IP
localip() { ipconfig getifaddr en0; }

# Show public IP
myip() { curl -s ifconfig.me; echo; }
