
#!/bin/bash

# Function to count files in the current directory
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Get the actual number of files
actual=$(count_files)

echo "Welcome to the Guessing Game!"
echo "How many files are in the current directory?"

# Keep asking until the correct answer is entered
while true
do
    read -p "Enter your guess: " guess

    if ! [[ "$guess" =~ ^[0-9]+$ ]]
    then
        echo "Please enter a valid number."
    elif [ "$guess" -lt "$actual" ]
    then
        echo "Your guess is too low. Try again!"
    elif [ "$guess" -gt "$actual" ]
    then
        echo "Your guess is too high. Try again!"
    else
        echo "Congratulations! You guessed correctly!"
        echo "There are $actual files in this directory."
        break
    fi
done
