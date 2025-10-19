-- ============================================================================
-- LUA/PLUGINS/ASTROCORE.LUA - Core Settings & Keymaps
-- ============================================================================

return {
  "AstroNvim/astrocore",
  opts = {
    -- Vim options (standard defaults)
    options = {
      opt = {
        relativenumber = true,
        number = true,
        spell = false,
        signcolumn = "yes",
        wrap = false,
        scrolloff = 8,
        sidescrolloff = 8,
        clipboard = "unnamedplus",
        undofile = true,
        swapfile = false,
        backup = false,
        updatetime = 250,
        timeoutlen = 300,
        expandtab = true,
        shiftwidth = 2,
        tabstop = 2,
        smartindent = true,
        ignorecase = true,
        smartcase = true,
        termguicolors = true,
        pumheight = 10,
        cmdheight = 1,
        showmode = false,
        splitbelow = true,
        splitright = true,
        cursorline = true,
        conceallevel = 0,
      },
      g = {
        loaded_perl_provider = 0,
        loaded_ruby_provider = 0,
        loaded_node_provider = 0,
        loaded_python3_provider = 0,
      },
    },

    -- Keymaps (comprehensive and standard)
    mappings = {
      n = {
        -- === FILE EXPLORER ===
        ["<leader>e"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
        ["<leader>o"] = { "<cmd>Neotree focus<cr>", desc = "Focus Explorer" },

        -- === TELESCOPE (FUZZY FINDER) ===
        ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", desc = "Find files" },
        ["<leader>fw"] = { "<cmd>Telescope live_grep<cr>", desc = "Find words" },
        ["<leader>fb"] = { "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
        ["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
        ["<leader>fo"] = { "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
        ["<leader>fc"] = { "<cmd>Telescope commands<cr>", desc = "Commands" },
        ["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
        ["<leader>fm"] = { "<cmd>Telescope marks<cr>", desc = "Marks" },
        ["<leader>fr"] = { "<cmd>Telescope registers<cr>", desc = "Registers" },
        ["<leader>fs"] = { "<cmd>Telescope lsp_document_symbols<cr>", desc = "Document symbols" },

        -- === BUFFER MANAGEMENT ===
        ["<leader>c"] = { "<cmd>bdelete<cr>", desc = "Close buffer" },
        ["<leader>C"] = { "<cmd>bdelete!<cr>", desc = "Force close buffer" },
        ["<S-l>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
        ["<S-h>"] = { "<cmd>bprev<cr>", desc = "Previous buffer" },
        ["<leader>b"] = { "<cmd>Telescope buffers<cr>", desc = "List buffers" },

        -- === WINDOW NAVIGATION ===
        ["<C-h>"] = { "<C-w>h", desc = "Move to left window" },
        ["<C-j>"] = { "<C-w>j", desc = "Move to bottom window" },
        ["<C-k>"] = { "<C-w>k", desc = "Move to top window" },
        ["<C-l>"] = { "<C-w>l", desc = "Move to right window" },

        -- === WINDOW MANAGEMENT ===
        ["<leader>wv"] = { "<cmd>vsplit<cr>", desc = "Vertical split" },
        ["<leader>wh"] = { "<cmd>split<cr>", desc = "Horizontal split" },
        ["<leader>wc"] = { "<cmd>close<cr>", desc = "Close window" },
        ["<leader>wo"] = { "<cmd>only<cr>", desc = "Close other windows" },

        -- === TERMINAL ===
        ["<leader>tt"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
        ["<leader>tf"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "Float terminal" },
        ["<leader>th"] = { "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal terminal" },
        ["<leader>tv"] = { "<cmd>ToggleTerm direction=vertical<cr>", desc = "Vertical terminal" },

        -- === LSP ACTIONS ===
        ["gd"] = { vim.lsp.buf.definition, desc = "Go to definition" },
        ["gD"] = { vim.lsp.buf.declaration, desc = "Go to declaration" },
        ["gr"] = { vim.lsp.buf.references, desc = "References" },
        ["gi"] = { vim.lsp.buf.implementation, desc = "Implementation" },
        ["gt"] = { vim.lsp.buf.type_definition, desc = "Type definition" },
        ["K"] = { vim.lsp.buf.hover, desc = "Hover documentation" },
        ["<leader>lf"] = { vim.lsp.buf.format, desc = "Format" },
        ["<leader>la"] = { vim.lsp.buf.code_action, desc = "Code action" },
        ["<leader>lr"] = { vim.lsp.buf.rename, desc = "Rename" },
        ["<leader>ld"] = { vim.diagnostic.open_float, desc = "Line diagnostics" },
        ["<leader>ls"] = { vim.lsp.buf.signature_help, desc = "Signature help" },
        ["[d"] = { vim.diagnostic.goto_prev, desc = "Previous diagnostic" },
        ["]d"] = { vim.diagnostic.goto_next, desc = "Next diagnostic" },

        -- === CODE RUNNER ===
        ["<leader>r"] = { "<cmd>RunCode<cr>", desc = "Run code" },
        ["<leader>rf"] = { "<cmd>RunFile<cr>", desc = "Run file" },
        ["<leader>rc"] = { "<cmd>RunClose<cr>", desc = "Close runner" },
        ["<leader>rp"] = { "<cmd>RunProject<cr>", desc = "Run project" },

        -- === DAP DEBUGGING ===
        ["<leader>db"] = { function() require("dap").toggle_breakpoint() end, desc = "Toggle breakpoint" },
        ["<leader>dB"] = {
          function() require("dap").set_breakpoint(vim.fn.input "Breakpoint condition: ") end,
          desc = "Conditional breakpoint",
        },
        ["<leader>dc"] = { function() require("dap").continue() end, desc = "Continue" },
        ["<leader>di"] = { function() require("dap").step_into() end, desc = "Step into" },
        ["<leader>do"] = { function() require("dap").step_over() end, desc = "Step over" },
        ["<leader>dO"] = { function() require("dap").step_out() end, desc = "Step out" },
        ["<leader>dt"] = { function() require("dap").terminate() end, desc = "Terminate" },
        ["<leader>du"] = { function() require("dapui").toggle() end, desc = "Toggle DAP UI" },
        ["<leader>dr"] = { function() require("dap").repl.toggle() end, desc = "Toggle REPL" },

        -- === GIT (Standard bindings) ===
        ["<leader>gg"] = { "<cmd>LazyGit<cr>", desc = "LazyGit" },
        ["<leader>gn"] = { "<cmd>Neogit<cr>", desc = "Neogit" },
        ["<leader>gc"] = { "<cmd>Telescope git_commits<cr>", desc = "Git commits" },
        ["<leader>gs"] = { "<cmd>Telescope git_status<cr>", desc = "Git status" },
        ["<leader>gb"] = { "<cmd>Telescope git_branches<cr>", desc = "Git branches" },
        ["<leader>gd"] = { "<cmd>DiffviewOpen<cr>", desc = "Diff view" },
        ["<leader>gh"] = { "<cmd>DiffviewFileHistory<cr>", desc = "File history" },
        ["<leader>gp"] = { function() require("gitsigns").preview_hunk() end, desc = "Preview hunk" },
        ["<leader>gr"] = { function() require("gitsigns").reset_hunk() end, desc = "Reset hunk" },
        ["<leader>gR"] = { function() require("gitsigns").reset_buffer() end, desc = "Reset buffer" },
        ["<leader>gS"] = { function() require("gitsigns").stage_hunk() end, desc = "Stage hunk" },
        ["<leader>gu"] = { function() require("gitsigns").undo_stage_hunk() end, desc = "Undo stage hunk" },
        ["[g"] = { function() require("gitsigns").prev_hunk() end, desc = "Previous hunk" },
        ["]g"] = { function() require("gitsigns").next_hunk() end, desc = "Next hunk" },

        -- === TROUBLE (DIAGNOSTICS) ===
        ["<leader>xx"] = { "<cmd>Trouble diagnostics toggle<cr>", desc = "Diagnostics (Trouble)" },
        ["<leader>xX"] = { "<cmd>Trouble diagnostics toggle filter.buf=0<cr>", desc = "Buffer diagnostics" },
        ["<leader>xl"] = { "<cmd>Trouble loclist toggle<cr>", desc = "Location list" },
        ["<leader>xq"] = { "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix list" },

        -- === UTILITY ===
        ["<leader>w"] = { "<cmd>w<cr>", desc = "Save" },
        ["<leader>q"] = { "<cmd>q<cr>", desc = "Quit" },
        ["<leader>Q"] = { "<cmd>qa!<cr>", desc = "Force quit all" },
        ["<Esc>"] = { "<cmd>nohlsearch<cr>", desc = "Clear highlights" },
        ["<leader>/"] = { "<cmd>Telescope current_buffer_fuzzy_find<cr>", desc = "Search in buffer" },

        -- === SESSION ===
        ["<leader>Ss"] = { "<cmd>SessionSave<cr>", desc = "Save session" },
        ["<leader>Sr"] = { "<cmd>SessionRestore<cr>", desc = "Restore session" },
      },

      t = {
        -- Terminal mode
        ["<Esc>"] = { "<C-\\><C-n>", desc = "Exit terminal mode" },
        ["<C-h>"] = { "<C-\\><C-n><C-w>h", desc = "Move to left window" },
        ["<C-j>"] = { "<C-\\><C-n><C-w>j", desc = "Move to bottom window" },
        ["<C-k>"] = { "<C-\\><C-n><C-w>k", desc = "Move to top window" },
        ["<C-l>"] = { "<C-\\><C-n><C-w>l", desc = "Move to right window" },
      },

      v = {
        -- Visual mode
        ["J"] = { ":m '>+1<cr>gv=gv", desc = "Move line down" },
        ["K"] = { ":m '<-2<cr>gv=gv", desc = "Move line up" },
        ["<leader>la"] = { vim.lsp.buf.code_action, desc = "Code action" },
        ["<leader>gS"] = {
          function() require("gitsigns").stage_hunk { vim.fn.line ".", vim.fn.line "v" } end,
          desc = "Stage hunk",
        },
        ["<leader>gr"] = {
          function() require("gitsigns").reset_hunk { vim.fn.line ".", vim.fn.line "v" } end,
          desc = "Reset hunk",
        },
      },
    },
  },
}
