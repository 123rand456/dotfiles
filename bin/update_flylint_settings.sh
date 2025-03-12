#!/bin/bash

# Define settings file location 
SETTINGS_FILE="$HOME/Library/Application Support/Code/User/settings.json"

# Find all test directories dynamically
INCLUDE_PATHS=$(find "$PWD/test" -type d -name "ex0*" 2>/dev/null | while read -r dir; do
    if [ -d "$dir" ]; then
        echo "-I \"$dir\""
    fi
done | tr '\n' ',' | sed 's/,$//')

# Check if paths were found 
if [ -z "$INCLUDE_PATHS" ]; then
    echo "❌ No valid test directories found."
    exit 1
fi

# Backup original settings file
cp "$SETTINGS_FILE" "$SETTINGS_FILE.backup"

# Modify settings.json to include dynamically found paths
if jq --arg includes "$INCLUDE_PATHS" '.["C_Cpp_FlyLint.extraArgs"] = ($includes | split(","))' \
    "$SETTINGS_FILE" > "$SETTINGS_FILE.tmp" && \
    mv "$SETTINGS_FILE.tmp" "$SETTINGS_FILE"; then
    echo "✅ Updated FlyLint include paths dynamically!"
else
    echo "❌ Failed to update settings file"
    mv "$SETTINGS_FILE.backup" "$SETTINGS_FILE"
    exit 1
fi