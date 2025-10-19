--==============================================
-- LUA/COMMUNITY.LUA - AstroCommunity Imports (Standard Practice)
-- ============================================================================

return {
  "AstroNvim/astrocommunity",

  -- === LANGUAGE PACKS (Essential) ===
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
  { import = "astrocommunity.pack.docker" },

  -- === COLORSCHEMES (Options) ===
  { import = "astrocommunity.colorscheme.catppuccin" },
  { import = "astrocommunity.colorscheme.tokyonight-nvim" },
  { import = "astrocommunity.colorscheme.gruvbox-nvim" },

  -- === GIT INTEGRATION ===
  { import = "astrocommunity.git.diffview-nvim" },
  { import = "astrocommunity.git.neogit" },

  -- === MOTION & EDITING ===
  { import = "astrocommunity.motion.flash-nvim" },
  { import = "astrocommunity.editing-support.nvim-treesitter-endwise" },
  { import = "astrocommunity.editing-support.nvim-regexplainer" },

  -- === CODE ASSISTANCE ===
  --{ import = "astrocommunity.completion.copilot-lua-cmp" }, -- Remove if no Copilot

  -- === UTILITY ===
  { import = "astrocommunity.utility.noice-nvim" },
  { import = "astrocommunity.bars-and-lines.vim-illuminate" },
  { import = "astrocommunity.indent.indent-blankline-nvim" },

  -- === DIAGNOSTICS ===
  { import = "astrocommunity.diagnostics.trouble-nvim" },
}
