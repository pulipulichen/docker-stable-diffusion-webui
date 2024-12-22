#!/bin/bash

# Get the current user's username
USER=$(whoami)

# Specify the mail directory
MAIL_DIR="/var/mail"

# Path to the current user's mail file
MAIL_FILE="${MAIL_DIR}/${USER}"

# Check if the mail file exists
if [[ -f $MAIL_FILE ]]; then
    sudo > "$MAIL_FILE"  # Truncate the file to remove all mail
    echo "All mail for user '$USER' has been cleared."
else
    echo "No mail found for user '$USER'."
fi
