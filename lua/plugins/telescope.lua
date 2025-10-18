-- ============================================================================
-- LUA/PLUGINS/TELESCOPE.LUA - Fuzzy Finder
-- ============================================================================

return {
  "nvim-telescope/telescope.nvim",
  opts = {
    defaults = {
      prompt_prefix = "  ",
      selection_caret = " ",
      path_display = { "smart" },
      file_ignore_patterns = { "node_modules", ".git", "target" },
    },
  },
}
