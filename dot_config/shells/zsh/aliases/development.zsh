# =============================================================================
# Development Tools
# =============================================================================
# Python
alias py="python3"
alias pipi="pip install"
alias venv="source venv/bin/activate"  # Activate virtual environment

# C/C++ Compilation
alias cc="cc -Wall -Wextra -Werror -g"  # Add debugging symbols
alias cco="cc -Wall -Wextra -O2"        # Optimize code (-O2 for speed)
alias ccs="cc -Wall -Wextra -Werror -fsanitize=address,undefined"  # Use AddressSanitizer
alias ccp="cc -Wall -Wextra -pedantic -std=c11"  # Strict C11 compliance
alias run="cc -Wall -Wextra -Werror -o a.out && ./a.out"
alias runx="cc -Wall -Wextra -Werror -o a.out && chmod +x a.out && ./a.out"

# Java Build Tools
# Maven
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

# Gradle
alias gb="gradle build"                     # Build the project
alias gcl="gradle clean"                    # Clean build artifacts
alias gt="gradle test"                      # Run tests
alias gbr="gradle bootRun"                  # Run Spring Boot application
alias gdep="gradle dependencies"            # Display dependencies
alias gtasks="gradle tasks"                 # List available tasks
alias gw="./gradlew"                        # Use Gradle wrapper
alias gwb="./gradlew build"                 # Build with wrapper
alias gwc="./gradlew clean"                 # Clean with wrapper
alias gwt="./gradlew test"                  # Test with wrapper
alias gwbr="./gradlew bootRun"              # Run Spring Boot with wrapper

# JAR Operations
alias jrun="java -jar"                      # Run a JAR file
alias jlist="jar -tf"                       # List contents of JAR file
alias jextract="jar -xf"                    # Extract JAR file contents
alias jcreate="jar -cf"                     # Create JAR file
alias jcreate-manifest="jar -cfm"           # Create JAR with manifest
alias jinfo="jar -tf"                       # Show JAR file information
alias jverify="jarsigner -verify"           # Verify JAR signature
alias jcheck="java -jar -Xmx32m"            # Run JAR with limited memory

# JAR Utility Functions
jarrun() { java -jar "$1" "${@:2}"; }       # Run JAR with arguments
jarinfo() { jar -tf "$1" | head -20; echo "... (showing first 20 entries)"; } # Show JAR contents preview 