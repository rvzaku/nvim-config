-- ============================================================================
-- LUA/PLUGINS/MASON.LUA - LSP/DAP/Tool Installer
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

  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "lua_ls",
        "bashls",
        "clangd",
        "rust_analyzer",
        "gopls",
        "jdtls",
        "pyright",
        "tsserver",
        "jsonls",
        "yamlls",
        "marksman",
        "dockerls",
      },
      automatic_installation = true,
    },
  },

  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "stylua",
        "prettier",
        "black",
        "isort",
        "clang-format",
        "gofumpt",
        "shfmt",
      },
      automatic_installation = true,
    },
  },

  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = {
        "codelldb",
        "delve",
        "python",
        "node2",
      },
      automatic_installation = true,
      handlers = {
        function(config) require("mason-nvim-dap").default_setup(config) end,
      },
    },
  },
}
