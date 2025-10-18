
-- ============================================================================
-- LUA/PLUGINS/HARDTIME.LUA - Better Vim Habits (HARDER MODE)
-- ============================================================================

return {
  "m4xshen/hardtime.nvim",
  event = "VeryLazy",
  dependencies = { "MunifTanjim/nui.nvim", "nvim-lua/plenary.nvim" },
  opts = {
    max_count = 2, -- Reduced from 4 to 2 (blocks after 2 consecutive uses)
    disable_mouse = true, -- Mouse disabled for stricter training
    hint = true,
    notification = true,
    allow_different_key = false, -- Forces you to use better motions
    enabled = true,
    restriction_mode = "block", -- Changed from "hint" to "block" - actually prevents bad habits
    disabled_keys = {
      -- Additional keys to restrict (arrow keys completely blocked)
      ["<Up>"] = {},
      ["<Down>"] = {},
      ["<Left>"] = {},
      ["<Right>"] = {},
    },
    restricted_keys = {
      -- More aggressive restrictions on repetitive motions
      ["h"] = { "n", "x" },
      ["j"] = { "n", "x" },
      ["k"] = { "n", "x" },
      ["l"] = { "n", "x" },
      ["-"] = { "n", "x" },
      ["+"] = { "n", "x" },
      ["gj"] = { "n", "x" },
      ["gk"] = { "n", "x" },
      ["<CR>"] = { "n", "x" },
      ["<C-M>"] = { "n", "x" },
      ["<C-N>"] = { "n", "x" },
      ["<C-P>"] = { "n", "x" },
    },
    disabled_filetypes = { 
      "neo-tree", "TelescopePrompt", "lazy", "mason", 
      "qf", "help", "dashboard", "alpha" 
    },
    hints = {
      -- Custom hints to teach better motions
      ["k%^k%^k%^k"] = {
        message = "Use <number>k or { } to move faster!",
        length = 4,
      },
      ["j%^j%^j%^j"] = {
        message = "Use <number>j or { } to move faster!",
        length = 4,
      },
      ["h%^h%^h%^h"] = {
        message = "Use w/b/e or f/F/t/T to move!",
        length = 4,
      },
      ["l%^l%^l%^l"] = {
        message = "Use w/b/e or f/F/t/T to move!",
        length = 4,
      },
    },
  },
}
