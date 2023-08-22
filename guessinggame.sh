#!/bin/bash
count_files() {
  local num_files=$(ls -l | grep ^- | wc -l)
  echo $num_files
}
actual_files=$(count_files)
echo "¡Guess The File!"
echo "How many files do you think are in the current directory?"
while true; do
  read user_guess
  if ! [[ "$user_guess" =~ ^[0-9]+$ ]]; then
    echo "Please enter a valid number."
  elif [[ $user_guess -lt $actual_files ]]; then
    echo "Too low. Try again!"
  elif [[ $user_guess -gt $actual_files ]]; then
    echo "Too high. Try again!"
  else
    echo "Congratulations! You guessed the number of files ($actual_files)."
    break
  fi
done
