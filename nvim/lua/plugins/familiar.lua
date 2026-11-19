-- Plugins from the old .vimrc that you already know.
return {
  -- colors
  { "nanotech/jellybeans.vim", lazy = false, priority = 1000 },
  { "LazyVim/LazyVim", opts = { colorscheme = "jellybeans" } },

  -- git: fugitive as before (:Git, :Gdiffsplit, :Git blame), plus a PR diff view
  { "tpope/vim-fugitive", cmd = { "Git", "G", "Gdiffsplit", "Gread", "Gwrite", "GBrowse" } },
  { "tpope/vim-rhubarb", dependencies = { "tpope/vim-fugitive" } }, -- :GBrowse to GitHub
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    keys = {
      { "<leader>gD", "<cmd>DiffviewOpen origin/main...HEAD<cr>", desc = "Diff branch vs main" },
      { "<leader>gH", "<cmd>DiffviewFileHistory %<cr>", desc = "File history" },
    },
  },

  -- tpope surround keys (cs"' ds( ysiw]) instead of mini.surround's gs*
  { "nvim-mini/mini.surround", enabled = false },
  { "tpope/vim-surround", event = "VeryLazy" },
  { "tpope/vim-repeat", event = "VeryLazy" },

  -- undo tree on F5
  { "mbbill/undotree", cmd = "UndotreeToggle" },

  -- emmet for JSX/TSX/HTML: type ul>li*3 then Ctrl-y ,
  {
    "mattn/emmet-vim",
    ft = { "html", "css", "scss", "javascriptreact", "typescriptreact", "vue", "svelte", "astro" },
    init = function()
      vim.g.user_emmet_settings = { javascript = { extends = "jsx" }, typescript = { extends = "tsx" } }
    end,
  },

  -- file tree: open on the left with NERDTree-ish keys
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = { follow_current_file = { enabled = true }, filtered_items = { hide_dotfiles = false } },
      window = { width = 32, mappings = { ["o"] = "open", ["s"] = "open_vsplit", ["i"] = "open_split" } },
    },
  },

  -- YAML: Ansible playbooks and Kamal config get the right schema
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {},
        yamlls = { settings = { yaml = { keyOrdering = false } } },
      },
    },
  },
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "shellcheck", "shfmt", "bash-language-server" } },
  },
}
