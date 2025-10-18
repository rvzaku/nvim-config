-- ============================================================================
-- LUA/COMMUNITY.LUA - AstroCommunity Plugin Imports
-- ============================================================================

return {
  "AstroNvim/astrocommunity",

  -- Language Packs (minimal set for core languages)
  { import = "astrocommunity.pack.lua" },
  { import = "astrocommunity.pack.python" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.cpp" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.toml" },
  { import = "astrocommunity.pack.markdown" },

  -- Colorschemes (optional alternatives)
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },

  -- Git integration
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.neogit" },

  -- Motion and editing
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.editing-support.auto-save-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-endwise" },
  { import = "astrocommunity.editing-support.ultimate-autopair-nvim" },

  -- Code assistance
  -- { import = "astrocommunity.completion.copilot-lua-cmp" }, -- Remove if no Copilot

  -- Utility
  { import = "astrocommunity.utility.noice-nvim" }, -- Enhanced UI
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
}
