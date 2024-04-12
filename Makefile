.PHONY: run-all dev brew

.DEFAULT_GOAL := run-all

run-all:
	make brew
	make dev
	source ~/.zshrc
	source ~/.zprofile

dev:
	./install/dev.sh

brew:
	./install/homebrew.sh