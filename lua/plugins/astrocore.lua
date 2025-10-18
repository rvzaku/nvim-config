-- ============================================================================
-- LUA/PLUGINS/ASTROCORE.LUA - Core Settings & Keymaps
-- ============================================================================

return {
  "AstroNvim/astrocore",
  opts = {
    -- Vim options
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
        -- Disable builtin plugins for performance
        loaded_perl_provider = 0,
        loaded_ruby_provider = 0,
        loaded_node_provider = 0,
        loaded_python3_provider = 0,
      },
    },
    
    -- Keymaps (complete, documented)
    mappings = {
      n = {
        -- === FILE NAVIGATION ===
        ["<leader>e"] = { "<cmd>Neotree toggle<cr>", desc = "Toggle Explorer" },
        ["<leader>o"] = { "<cmd>Neotree focus<cr>", desc = "Focus Explorer" },
        
        -- === TELESCOPE (FUZZY FINDER) ===
        ["<leader>ff"] = { "<cmd>Telescope find_files<cr>", desc = "Find files" },
        ["<leader>fg"] = { "<cmd>Telescope live_grep<cr>", desc = "Find words" },
        ["<leader>fb"] = { "<cmd>Telescope buffers<cr>", desc = "Find buffers" },
        ["<leader>fh"] = { "<cmd>Telescope help_tags<cr>", desc = "Help tags" },
        ["<leader>fo"] = { "<cmd>Telescope oldfiles<cr>", desc = "Recent files" },
        ["<leader>fc"] = { "<cmd>Telescope commands<cr>", desc = "Commands" },
        ["<leader>fk"] = { "<cmd>Telescope keymaps<cr>", desc = "Keymaps" },
        
        -- === BUFFER MANAGEMENT ===
        ["<leader>c"] = { "<cmd>bdelete<cr>", desc = "Close buffer" },
        ["<S-l>"] = { "<cmd>bnext<cr>", desc = "Next buffer" },
        ["<S-h>"] = { "<cmd>bprev<cr>", desc = "Previous buffer" },
        
        -- === WINDOW NAVIGATION ===
        ["<C-h>"] = { "<C-w>h", desc = "Move to left window" },
        ["<C-j>"] = { "<C-w>j", desc = "Move to bottom window" },
        ["<C-k>"] = { "<C-w>k", desc = "Move to top window" },
        ["<C-l>"] = { "<C-w>l", desc = "Move to right window" },
        
        -- === TERMINAL ===
        ["<leader>tt"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
        ["<leader>tf"] = { "<cmd>ToggleTerm direction=float<cr>", desc = "Float terminal" },
        ["<leader>th"] = { "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Horizontal terminal" },
        
        -- === LSP ACTIONS ===
        ["gd"] = { vim.lsp.buf.definition, desc = "Go to definition" },
        ["gD"] = { vim.lsp.buf.declaration, desc = "Go to declaration" },
        ["gr"] = { vim.lsp.buf.references, desc = "References" },
        ["gi"] = { vim.lsp.buf.implementation, desc = "Implementation" },
        ["K"] = { vim.lsp.buf.hover, desc = "Hover documentation" },
        ["<leader>lf"] = { vim.lsp.buf.format, desc = "Format" },
        ["<leader>la"] = { vim.lsp.buf.code_action, desc = "Code action" },
        ["<leader>lr"] = { vim.lsp.buf.rename, desc = "Rename" },
        ["<leader>ld"] = { vim.diagnostic.open_float, desc = "Line diagnostics" },
        ["[d"] = { vim.diagnostic.goto_prev, desc = "Previous diagnostic" },
        ["]d"] = { vim.diagnostic.goto_next, desc = "Next diagnostic" },
        
        -- === CODE RUNNER ===
        ["<leader>r"] = { "<cmd>RunCode<cr>", desc = "Run code" },
        ["<leader>rf"] = { "<cmd>RunFile<cr>", desc = "Run file" },
        ["<leader>rc"] = { "<cmd>RunClose<cr>", desc = "Close runner" },
        
        -- === DAP DEBUGGING ===
        ["<leader>db"] = { function() require("dap").toggle_breakpoint() end, desc = "Toggle breakpoint" },
        ["<leader>dc"] = { function() require("dap").continue() end, desc = "Continue" },
        ["<leader>di"] = { function() require("dap").step_into() end, desc = "Step into" },
        ["<leader>do"] = { function() require("dap").step_over() end, desc = "Step over" },
        ["<leader>dO"] = { function() require("dap").step_out() end, desc = "Step out" },
        ["<leader>dt"] = { function() require("dap").terminate() end, desc = "Terminate" },
        ["<leader>du"] = { function() require("dapui").toggle() end, desc = "Toggle DAP UI" },
        
        -- === GIT ===
        ["<leader>gg"] = { "<cmd>Neogit<cr>", desc = "Neogit" },
        ["<leader>gd"] = { "<cmd>DiffviewOpen<cr>", desc = "Diff view" },
        ["<leader>gh"] = { "<cmd>DiffviewFileHistory<cr>", desc = "File history" },
        
        -- === UTILITY ===
        ["<leader>w"] = { "<cmd>w<cr>", desc = "Save" },
        ["<leader>q"] = { "<cmd>q<cr>", desc = "Quit" },
        ["<leader>Q"] = { "<cmd>qa!<cr>", desc = "Force quit all" },
        ["<Esc>"] = { "<cmd>nohlsearch<cr>", desc = "Clear highlights" },
      },
      
      t = {
        -- Terminal mode keymaps
        ["<Esc>"] = { "<C-\\><C-n>", desc = "Exit terminal mode" },
        ["<C-h>"] = { "<C-\\><C-n><C-w>h", desc = "Move to left window" },
        ["<C-j>"] = { "<C-\\><C-n><C-w>j", desc = "Move to bottom window" },
        ["<C-k>"] = { "<C-\\><C-n><C-w>k", desc = "Move to top window" },
        ["<C-l>"] = { "<C-\\><C-n><C-w>l", desc = "Move to right window" },
      },
      
      v = {
        -- Visual mode: move lines
        ["J"] = { ":m '>+1<cr>gv=gv", desc = "Move line down" },
        ["K"] = { ":m '<-2<cr>gv=gv", desc = "Move line up" },
      },
    },
  },
}
