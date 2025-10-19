-- ============================================================================
-- LUA/PLUGINS/NONE-LS.LUA - Formatting
-- ============================================================================

return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require "null-ls"
    opts.sources = opts.sources or {}

    table.insert(opts.sources, null_ls.builtins.formatting.stylua)
    table.insert(opts.sources, null_ls.builtins.formatting.prettier)
    table.insert(opts.sources, null_ls.builtins.formatting.black)
    table.insert(opts.sources, null_ls.builtins.formatting.isort)
    table.insert(opts.sources, null_ls.builtins.formatting.clang_format)
    table.insert(opts.sources, null_ls.builtins.formatting.gofumpt)
    table.insert(opts.sources, null_ls.builtins.formatting.shfmt)

    return opts
  end,
}
