README.md: guessinggame.sh; echo "Guessing Game Project" > README.md ; date >> README.md ; echo "The number of lines in guessinggame.sh:" >> README.md ; wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
.PHONY: clean
clean: rm README.md