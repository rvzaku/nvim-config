
-- ============================================================================
-- LUA/PLUGINS/NEO-TREE.LUA - File Explorer
-- ============================================================================

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
      },
      follow_current_file = { enabled = true },
    },
  },
}
