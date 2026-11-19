-- Old .vimrc keys on top of LazyVim's defaults.
-- LazyVim's own keys: press "," and wait for the which-key popup.
local map = vim.keymap.set

-- file tree, like NERDTree
map("n", "<leader><leader>", "<cmd>Neotree toggle<cr>", { desc = "Toggle file tree" })
map("n", "<C-\\>", "<cmd>Neotree reveal<cr>", { desc = "Reveal file in tree" })

-- Ctrl-p finds files, like CtrlP
map("n", "<C-p>", function() Snacks.picker.files() end, { desc = "Find files" })

-- // clears search highlight; ,hl toggles it
map("n", "//", "<cmd>nohlsearch<cr>", { silent = true, desc = "Clear search highlight" })
map("n", "<leader>hl", "<cmd>set hlsearch! hlsearch?<cr>", { desc = "Toggle search highlight" })

-- ,tw toggles wrap (LazyVim also has ,uw)
map("n", "<leader>tw", "<cmd>set invwrap<cr><cmd>set wrap?<cr>", { desc = "Toggle wrap" })

-- ,fc jumps to the next merge-conflict marker (replaces LazyVim's "find config file")
map("n", "<leader>fc", [[/\v^[<=>]{7}( .*|$)<cr>]], { desc = "Next conflict marker" })

-- ,y / ,p copy/paste between editors via ~/.vbuf
map("v", "<leader>y", ":w! ~/.vbuf<cr>", { desc = "Copy selection to ~/.vbuf" })
map("n", "<leader>y", ":.w! ~/.vbuf<cr>", { desc = "Copy line to ~/.vbuf" })
map("n", "<leader>p", ":r ~/.vbuf<cr>", { desc = "Paste ~/.vbuf" })

-- F5 undo tree, F8 symbols outline (same keys as before)
map("n", "<F5>", "<cmd>UndotreeToggle<cr>", { desc = "Undo tree" })
map("n", "<F8>", function() Snacks.picker.lsp_symbols() end, { desc = "Symbols" })

-- ,u / ,l are LazyVim groups (UI toggles, Lazy). Case the word with gUiw / guiw.
