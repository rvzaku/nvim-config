-- ============================================================================
-- LUA/POLISH.LUA - Final Customizations
-- ============================================================================

-- Set colorscheme
vim.cmd.colorscheme("astrodark")

-- Additional autocommands
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = "*",
  callback = function()
    -- Remove trailing whitespace on save
    local save_cursor = vim.fn.getpos(".")
    vim.cmd([[%s/\s\+$//e]])
    vim.fn.setpos(".", save_cursor)
  end,
})

-- FileType-specific settings
vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp", "java" },
  callback = function()
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
  end,
})
