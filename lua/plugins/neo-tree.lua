-- ============================================================================
-- LUA/PLUGINS/NEO-TREE.LUA - File Explorer
-- ============================================================================

return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    close_if_last_window = true,
    popup_border_style = "rounded",
    enable_git_status = true,
    enable_diagnostics = true,
    filesystem = {
      filtered_items = {
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          ".git",
          "node_modules",
        },
      },
      follow_current_file = {
        enabled = true,
        leave_dirs_open = false,
      },
      use_libuv_file_watcher = true,
    },
    window = {
      position = "left",
      width = 30,
    },
  },
}
