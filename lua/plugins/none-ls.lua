-- ============================================================================
-- LUA/PLUGINS/NONE-LS.LUA - Linting & Formatting (FIXED)
-- ============================================================================

return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require("null-ls")
    
    -- Initialize sources table if it doesn't exist
    opts.sources = opts.sources or {}
    
    -- Formatting sources (these are stable)
    table.insert(opts.sources, null_ls.builtins.formatting.stylua)
    table.insert(opts.sources, null_ls.builtins.formatting.prettier)
    table.insert(opts.sources, null_ls.builtins.formatting.black)
    table.insert(opts.sources, null_ls.builtins.formatting.isort)
    table.insert(opts.sources, null_ls.builtins.formatting.clang_format)
    table.insert(opts.sources, null_ls.builtins.formatting.gofumpt)
    table.insert(opts.sources, null_ls.builtins.formatting.shfmt)
    
    -- NOTE: Diagnostics removed - use LSP servers instead (bashls, eslint, etc.)
    -- If you need shellcheck, install it via mason and use bashls
    
    return opts
  end,
}
