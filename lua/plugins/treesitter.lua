-- ============================================================================
-- LUA/PLUGINS/TREESITTER.LUA - Syntax Highlighting
-- ============================================================================

return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "lua", "vim", "vimdoc", "c", "cpp", "rust", "go",
      "java", "python", "javascript", "typescript", "tsx",
      "bash", "json", "yaml", "toml", "markdown", "html", "css",
    },
    highlight = { enable = true },
    indent = { enable = true },
    incremental_selection = { enable = true },
    textobjects = { enable = true },
  },
}
