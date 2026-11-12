
.PHONY: all FORCE

all: README.md

README.md: FORCE guessinggame.sh makefile
	@echo "# Guessing Game" > README.md
	@echo "" >> README.md
	@echo "This project is a Bash guessing game." >> README.md
	@echo "" >> README.md
	@echo "## Project Information" >> README.md
	@echo "" >> README.md
	@echo "**Date and time:** $$(date '+%Y-%m-%d %H:%M:%S')" >> README.md
	@echo "" >> README.md
	@echo "**Lines of code in guessinggame.sh:** $$(wc -l < guessinggame.sh)" >> README.md
	@echo "" >> README.md
	@echo "## How to run" >> README.md
	@echo "" >> README.md
	@echo '```bash' >> README.md
	@echo "bash guessinggame.sh" >> README.md
	@echo '```' >> README.md

FORCE:
