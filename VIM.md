# Vim cheatsheet

Config: [`.vimrc`](.vimrc). Install: `make vim`. Plugins: vim-plug (`:PlugInstall`, `:PlugUpdate`, `:PlugClean`, `:PlugStatus`).

**Leader is `,`.** `\` is not mapped as leader. `Ctrl-\` reveals the current file in NERDTree.

## Leader keys
| Keys | Does |
|---|---|
| `,,` | Toggle NERDTree (file tree) |
| `,fef` | Re-indent the whole file |
| `,tw` | Toggle line wrap |
| `,fc` | Jump to the next merge-conflict marker |
| `,u` / `,l` | UPPER / lower-case the word under the cursor |
| `,y` / `,p` | Copy the line or selection to `~/.vbuf` / paste it (works across Vim instances) |
| `,hl` | Toggle search highlighting |
| `,h` | Convert html to haml (needs `html2haml`) |
| `,b` `,B` | Buffergator: open the buffer list / close it |
| `,to` `,tc` | Buffergator tab list: open / close |

## Other keys
| Keys | Does |
|---|---|
| `Ctrl-h/j/k/l` | Move between splits |
| `Ctrl-\` | Reveal the current file in NERDTree |
| `Ctrl-p` | CtrlP fuzzy file finder (`Ctrl-f`/`Ctrl-b` switch mode: files/buffers/MRU) |
| `//` | Clear search highlight |
| `F1` / `F2` | Paste from / copy to the macOS clipboard |
| `F4` | Toggle paste mode |
| `F5` | Undotree (undo history is kept across sessions in `~/.vim/undo`) |
| `F8` | Tagbar (outline; needs `ctags`) |
| `:w!!` | Save with sudo |

## Plugins by purpose
- **Files and navigation:** NERDTree (`,,`), CtrlP (`Ctrl-p`), ack.vim (`:Ack pattern`, uses rg or ag), buffergator (`,b`), tagbar (`F8`).
- **Git:** fugitive. `:Git` gives status, where `s`/`u` stage and unstage, `cc` commits and `=` shows the diff. Also `:Git blame`, `:Gdiffsplit` and `:Git push`.
- **Editing:**
  - surround: `cs"'` changes `"` to `'`, `ds(` deletes the parens, `ysiw]` wraps a word in `[]`.
  - commentary: `gcc` comments a line, `gc` + motion comments a range.
  - repeat makes `.` work with surround and commentary.
  - unimpaired: `[b`/`]b` for buffers, `[q`/`]q` for quickfix, `[<Space>` adds a blank line.
  - endwise adds `end` automatically.
  - tabular: `:Tab /=` aligns on `=`.
  - supertab: Tab completion.
- **Project / Rails:**
  - projectionist and rails: `:A` goes to the alternate file, `:R` to the related one, `:Emodel user` opens a model.
  - dispatch: `:Make` / `:Dispatch rspec` run builds and tests in the background.
  - bundler: `:Bundle`.
- **Undo:** undotree (`F5`).
- **Look:** airline statusline (it shows mode, branch and `[N]trailing`), jellybeans colors.
- **Languages:** vim-polyglot (syntax and indent for about 100 languages), editorconfig, sleuth (detects indent style), sensible defaults.

## Defaults worth knowing
- Line numbers and cursorline are on. Wrap is off.
- 4-space tabs, unless sleuth or editorconfig detect something else.
- Search is case-insensitive unless you type a capital letter.
- Trailing whitespace is stripped on every save.
- No swap or backup files. Persistent undo is on.
- The mouse is on, and the system clipboard is used when Vim is built with `+clipboard`.

## Workflows
- **Find and open:** `Ctrl-p`, then type part of the path. Or `,,` to browse, then `o` to open, `s` for a vertical split, `i` for a horizontal split.
- **Search the project:** `:Ack foo`, then `]q`/`[q` through results. `:cclose` closes the list.
- **Commit:** `:Git`, stage with `s`, `cc`, write the message, `:wq`. Then `:Git push`.
- **Rails hop:** `:A` jumps between a model and its spec. `:Econtroller users` opens a controller.
- **Resolve a conflict:** `,fc` jumps to the next marker, `:Gdiffsplit!` opens a 3-way diff.
- **Undo something from yesterday:** `F5`, then pick a state in the tree.
- **Personal overrides:** put them in `~/.vimrc.after`, which isn't tracked.
