
-- ============================================================================
-- LUA/PLUGINS/ASTROLSP.LUA - LSP Configuration
-- ============================================================================

return {
  "AstroNvim/astrolsp",
  opts = {
    features = {
      autoformat = true,
      codelens = true,
      inlay_hints = true,
      semantic_tokens = true,
    },
    
    -- LSP server configurations
    config = {
      clangd = {
        capabilities = {
          offsetEncoding = "utf-8",
        },
        cmd = {
          "clangd",
          "--background-index",
          "--clang-tidy",
          "--header-insertion=iwyu",
          "--completion-style=detailed",
          "--function-arg-placeholders",
          "--fallback-style=llvm",
        },
        init_options = {
          usePlaceholders = true,
          completeUnimported = true,
          clangdFileStatus = true,
        },
      },
      
      rust_analyzer = {
        settings = {
          ["rust-analyzer"] = {
            checkOnSave = { command = "clippy" },
            cargo = { allFeatures = true },
          },
        },
      },
      
      gopls = {
        settings = {
          gopls = {
            analyses = { unusedparams = true },
            staticcheck = true,
            gofumpt = true,
          },
        },
      },
      
      jdtls = {
        settings = {
          java = {
            signatureHelp = { enabled = true },
            contentProvider = { preferred = "fernflower" },
            completion = {
              favoriteStaticMembers = {
                "org.junit.jupiter.api.Assertions.*",
                "java.util.Objects.requireNonNull",
              },
            },
          },
        },
      },
      
      pyright = {
        settings = {
          python = {
            analysis = {
              typeCheckingMode = "basic",
              autoImportCompletions = true,
            },
          },
        },
      },
      
      tsserver = {
        settings = {
          typescript = {
            inlayHints = {
              includeInlayParameterNameHints = "all",
              includeInlayFunctionParameterTypeHints = true,
            },
          },
        },
      },
    },
    
    -- Auto-commands for LSP
    autocmds = {
      lsp_document_highlight = {
        {
          event = { "CursorHold", "CursorHoldI" },
          desc = "Document highlight",
          callback = function(args)
            if require("astrolsp").config.features.document_highlight then
              vim.lsp.buf.document_highlight()
            end
          end,
        },
        {
          event = { "CursorMoved", "CursorMovedI", "BufLeave" },
          desc = "Clear document highlight",
          callback = function(args)
            vim.lsp.buf.clear_references()
          end,
        },
      },
    },
    
    -- Format on save
    on_attach = function(client, bufnr)
      if client.supports_method("textDocument/formatting") then
        vim.api.nvim_create_autocmd("BufWritePre", {
          buffer = bufnr,
          callback = function()
            vim.lsp.buf.format({ bufnr = bufnr })
          end,
        })
      end
    end,
  },
}

