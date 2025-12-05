#!/bin/bash
# Usage: ./create_users.sh <filename>

USER_FILE=$1

# Safety Check: Did you provide a file?
if [ ! -f "$USER_FILE" ]; then
    echo "Error: File '$USER-FILE' not found."
    exit 1
fi

#Loop through the file line by line
while IFS= read -r user; do
    # Remove accidental spaces
    user=$(echo "$user" | xargs)

    # Check if user already exists
    if id "$user" &>/dev/null; then
         echo "Skipping: User $user already exists."
    else
        sudo useradd -m -s /bin/bash "$user"
        if [ $? -eq 0 ]; then
            echo "Success: Created user $user"
        else 
            echo "Error: Failed to create $user"
        fi
    fi
done < "$USER_FILE"

