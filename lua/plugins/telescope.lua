-- ============================================================================
-- LUA/PLUGINS/TELESCOPE.LUA - Fuzzy Finder
-- ============================================================================

return {
  "nvim-telescope/telescope.nvim",
  dependencies = {
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
  opts = function(_, opts)
    local actions = require "telescope.actions"

    opts.defaults = vim.tbl_deep_extend("force", opts.defaults or {}, {
      prompt_prefix = "  ",
      selection_caret = " ",
      path_display = { "smart" },
      file_ignore_patterns = {
        "node_modules",
        ".git/",
        "target/",
        "build/",
        "%.jpg",
        "%.jpeg",
        "%.png",
        "%.svg",
        "%.otf",
        "%.ttf",
      },
      mappings = {
        i = {
          ["<C-j>"] = actions.move_selection_next,
          ["<C-k>"] = actions.move_selection_previous,
          ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
        },
        n = {
          ["q"] = actions.close,
        },
      },
    })

    return opts
  end,
  config = function(plugin, opts)
    require("telescope").setup(opts)
    require("telescope").load_extension "fzf"
  end,
}
