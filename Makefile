.PHONY: run-all dev brew vim nvim

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

vim:
	./install/vim.sh

nvim:
	./install/nvim.sh
