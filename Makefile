.PHONY: run-all dev brew

.DEFAULT_GOAL := run-all

run-all:
	make brew
	make dev
	source ~/.zshrc
	source ~/.zprofile

dev:
	./dependencies/dev.sh

brew:
	./dependencies/homebrew.sh