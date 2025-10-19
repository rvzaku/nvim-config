-- ============================================================================
-- LUA/PLUGINS/TREESITTER.LUA - Syntax Highlighting
-- ============================================================================

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua",
      "vim",
      "vimdoc",
      "c",
      "cpp",
      "rust",
      "go",
      "java",
      "python",
      "javascript",
      "typescript",
      "tsx",
      "bash",
      "json",
      "yaml",
      "toml",
      "markdown",
      "html",
      "css",
      "dockerfile",
      "gitcommit",
      "gitignore",
      "regex",
    },
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = {
      enable = true,
      keymaps = {
        init_selection = "<CR>",
        node_incremental = "<CR>",
        scope_incremental = "<S-CR>",
        node_decremental = "<BS>",
      },
    },
  },
}
