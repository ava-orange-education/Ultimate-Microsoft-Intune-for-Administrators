#!/bin/bash

# Set the folder name you want to create
FOLDER_NAME="MyNewFolder"

# Get the current user's home directory
USER_HOME=$(eval echo ~$SUDO_USER)

# Define the full path to the folder
TARGET_DIR="$USER_HOME/Documents/$FOLDER_NAME"

# Check if the folder already exists
if [ -d "$TARGET_DIR" ]; then
    echo "The folder '$FOLDER_NAME' already exists in the Documents directory."
else
    # Create the folder
    mkdir -p "$TARGET_DIR"
    echo "The folder '$FOLDER_NAME' has been created in the Documents directory."
fi

# Run the script in the background
nohup $0 > /dev/null 2>&1 &


