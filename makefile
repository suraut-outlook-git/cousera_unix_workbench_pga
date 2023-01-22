define NEWLINE

endef
export NEWLINE

readme : guessinggame.sh
	touch README.md
	echo "Title of the project: __Peer-graded Assignment: Bash, Make, Git, and GitHub__ $(NEWLINE)" > README.md
	echo "Date make ran at: $(NEWLINE)" >> README.md
	date >> README.md
	echo "Number of lines file guessinggame.sh contains: $(NEWLINE)" >> README.md
	cat guessinggame.sh | wc -l >> README.md

