# Neovim (LazyVim) cheatsheet

Config: [`nvim/`](nvim/). Install: `brew install neovim lazygit && make nvim`. Plain `vim` still uses the classic [`.vimrc`](.vimrc) ([VIM.md](VIM.md)).

**Leader is `,`, as in Vim.** Press `,` and wait: which-key shows every command. `,sk` searches all keymaps.

## Your old keys still work
| Keys | Does |
|---|---|
| `,,` | Toggle the file tree (neo-tree: `o` open, `s` vsplit, `i` split, `a` add, `d` delete, `r` rename) |
| `Ctrl-\` | Reveal the current file in the tree |
| `Ctrl-p` | Find files |
| `Ctrl-h/j/k/l` | Move between splits |
| `//` | Clear search highlight. `,hl` toggles it |
| `,tw` | Toggle wrap |
| `,fc` | Jump to the next merge-conflict marker |
| `,y` / `,p` | Copy / paste via `~/.vbuf` |
| `F5` | Undo tree |
| `F8` | Symbols in the file (was tagbar) |
| `cs"'` `ds(` `ysiw]` | Surround (tpope keys) |
| `gcc`, `gc` + motion | Comment |
| `:Git`, `:Gdiffsplit`, `:Git blame`, `:GBrowse` | Fugitive, plus GitHub via rhubarb |
| `Ctrl-y ,` | Emmet in JSX/TSX/HTML |

Changed: `,u`/`,l` are now LazyVim menus (UI toggles, Lazy). Use `gUiw` / `guiw` to change a word's case. The system clipboard is the default register, so F1/F2 are gone. `,fef` became `,cf` (format with prettier/eslint/shfmt).

## Code (LSP: TS, JSON, YAML, Ansible, Docker, Markdown, Bash, TOML)
| Keys | Does |
|---|---|
| `gd` / `gr` / `gI` | Go to definition / references / implementation |
| `K` | Hover docs |
| `,ca` | Code action (quick fix, organize imports) |
| `,cr` | Rename symbol |
| `,cf` | Format the file or selection (format on save is off) |
| `]d` `[d` | Next / previous diagnostic. `,cd` shows the line's diagnostic |
| `,xx` | All diagnostics (Trouble) |
| `,cm` | Mason (language servers and tools) |

## Find
| Keys | Does |
|---|---|
| `,ff` / `Ctrl-p` | Files |
| `,/` | Grep the project |
| `,fr` | Recent files |
| `,fb` | Open buffers |
| `,sk` / `,sh` | Keymaps / help |

## Git and GitHub
| Keys | Does |
|---|---|
| `,gg` | Lazygit |
| `,gs` | Git status picker |
| `,gb` | Blame the line |
| `]h` `[h`, `,ghs` `,ghr` | Next / previous hunk, stage / reset hunk |
| `,gD` | Diff the branch against `origin/main` (diffview) |
| `,gH` | Current file's history |
| `,gp` / `,gP` | List / search PRs (Octo: review, comment and approve in the editor; uses `gh` auth) |
| `,gi` | List issues |

## AI: Claude Code
| Keys | Does |
|---|---|
| `,ac` | Toggle Claude Code in a split (it sees your open files and selection) |
| `,as` (visual) | Send the selection to Claude |
| `,ab` | Add the current buffer to the context |
| `,aa` / `,ad` | Accept / deny a diff Claude proposes |
| `,ar` / `,aC` | Resume / continue the last session |

## Other
- `,l` opens Lazy (plugins: `U` update, `S` sync). The lockfile is `nvim/lazy-lock.json`, so commit it after updating.
- `,ft` opens a terminal, and `Ctrl-/` toggles it.
- `,uw` toggles wrap, `,us` spelling, `,ul` line numbers.
- `,qq` quits all.
- Trailing whitespace is stripped on save, except in Markdown.
- Temp files skip undo history, so `sops`/`git commit` content never lands in the undo dir.
