local au = vim.api.nvim_create_autocmd
local group = vim.api.nvim_create_augroup("sibsfinx", { clear = true })

-- strip trailing whitespace on save (except Markdown, where two spaces = line break)
au("BufWritePre", {
  group = group,
  callback = function(ev)
    if vim.bo[ev.buf].filetype == "markdown" then return end
    local view = vim.fn.winsaveview()
    vim.cmd([[keeppatterns %s/\s\+$//e]])
    vim.fn.winrestview(view)
  end,
})

-- never keep undo history/shada marks for temp files:
-- `sops file.yaml` and `git commit` edit secret/decrypted text in $TMPDIR
au({ "BufReadPre", "BufNewFile" }, {
  group = group,
  pattern = { "/tmp/*", "/private/tmp/*", "/var/folders/*", "/private/var/folders/*", "*.dec.*", "*.decrypted.*" },
  callback = function()
    vim.opt_local.undofile = false
    vim.opt_local.shada = ""
  end,
})

au({ "BufRead", "BufNewFile" }, {
  group = group,
  pattern = { "Vagrantfile", "Gemfile", "Capfile" },
  command = "set filetype=ruby",
})
