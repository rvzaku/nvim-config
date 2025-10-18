-- ============================================================================
-- LUA/PLUGINS/MASON.LUA - LSP/DAP/Linter/Formatter Installer
-- ============================================================================

return {
  {
    "williamboman/mason.nvim",
    opts = {
      ui = {
        border = "rounded",
        width = 0.8,
        height = 0.8,
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    },
  },

  -- Mason LSP Config - Auto-install LSP servers
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        -- System & Scripting
        "lua_ls",      -- Lua
        "bashls",      -- Bash
        
        -- Compiled Languages
        "clangd",      -- C/C++
        "rust_analyzer", -- Rust
        "gopls",       -- Go
        "jdtls",       -- Java
        
        -- Web & Scripting
        "pyright",     -- Python
        "tsserver",    -- TypeScript/JavaScript
        
        -- Data & Markup
        "jsonls",      -- JSON
        "yamlls",      -- YAML
        "marksman",    -- Markdown
      },
      automatic_installation = true,
    },
  },

  -- Mason Null-ls - Auto-install formatters and linters
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        -- Lua
        "stylua",
        
        -- Web
        "prettier",
        
        -- Python
        "black",
        "isort",
        
        -- C/C++
        "clang-format",
        
        -- Go
        "gofumpt",
        
        -- Shell
        "shfmt",
      },
      automatic_installation = true,
    },
  },

  -- Mason DAP - Auto-install debug adapters
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "codelldb",  -- C/C++/Rust
        "delve",     -- Go
        "python",    -- Python
        "node2",     -- JavaScript/TypeScript
      },
      automatic_installation = true,
      handlers = {
        function(config)
          require("mason-nvim-dap").default_setup(config)
        end,
      },
    },
  },
}
