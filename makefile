README.md: guessinggame.sh
	echo "# Peer-graded Assignment-Bash-Make-Git-and-GitHub">README.md
	echo "## Guessing game">>README.md
	echo "**Last modified on**: `date +%F\ %r`">>README.md
	echo "**Number of lines in code**: `wc -l guessinggame.sh|egrep -o "[0-9]+"`">>README.md
	echo "**Last modified on:** `date +%F\ %r`  ">>README.md
	echo "**Number of lines in code:** `wc -l guessinggame.sh|egrep -o "[0-9]+"`">>README.md

clean:
	rm -i README.md
  
