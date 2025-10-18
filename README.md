# 🚀 My Personal Neovim Configuration

My personalized Neovim setup built on AstroNvim v5, configured for coding in multiple languages with a focus on productivity and efficiency.

## ✨ Features

- **Modern IDE Experience** - Full LSP support, autocompletion, and debugging
- **Multi-Language Support** - C/C++, Rust, Go, Java, Python, TypeScript, and more
- **Smart Code Execution** - Run code directly from Neovim
- **Git Integration** - Built-in git tools (Neogit, Diffview)
- **Better Habits** - Hardtime plugin to improve Vim motions
- **Fast & Efficient** - Optimized for performance

## 📦 What's Inside

### Core Plugins
- [AstroNvim](https://github.com/AstroNvim/AstroNvim) - Base framework
- [Telescope](https://github.com/nvim-telescope/telescope.nvim) - Fuzzy finder
- [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) - File explorer
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) - Better syntax highlighting
- [Mason](https://github.com/williamboman/mason.nvim) - LSP/DAP/linter manager

### Language Support
- **C/C++** - clangd with auto-includes and clang-tidy
- **Rust** - rust-analyzer with clippy
- **Go** - gopls with auto-imports
- **Java** - jdtls with auto-completion
- **Python** - pyright with black formatting
- **TypeScript/JavaScript** - tsserver with prettier
- **And more** - Bash, Lua, JSON, YAML, Markdown

### Development Tools
- **Debugger** - Full DAP support for C/C++, Rust, Go, Python, JS
- **Code Runner** - Execute code in 10+ languages
- **Formatters** - Auto-format on save (black, prettier, clang-format, etc.)
- **Git Tools** - Neogit and Diffview for version control

## 🛠️ Installation

### Prerequisites
- Neovim >= 0.10.0
- Git
- A [Nerd Font](https://www.nerdfonts.com/) (I recommend JetBrainsMono or FiraCode)
- Node.js (for some LSPs)
- Python 3 (for Python LSP)

### Quick Setup

1. **Backup existing config** (if you have one)
   ```bash
   mv ~/.config/nvim ~/.config/nvim.backup
   mv ~/.local/share/nvim ~/.local/share/nvim.backup
   ```

2. **Clone this repository**
   ```bash
   git clone https://github.com/rvzaku/nvim-config.git ~/.config/nvim
   ```

3. **Launch Neovim**
   ```bash
   nvim
   ```

   Lazy.nvim will automatically install all plugins on first launch.

4. **Install language servers**
   - Open Neovim and run `:Mason`
   - Press `i` to install LSP servers you need
   - Or they'll auto-install when you open relevant files

5. **Restart Neovim** and you're ready to go!

## ⚙️ Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point
├── lua/
│   ├── community.lua        # AstroCommunity imports
│   ├── plugins/            # Plugin configurations
│   │   ├── astrocore.lua   # Core settings & keymaps
│   │   ├── astrolsp.lua    # LSP configuration
│   │   ├── astroui.lua     # UI settings
│   │   ├── mason.lua       # LSP/DAP installer
│   │   ├── none-ls.lua     # Formatters & linters
│   │   ├── treesitter.lua  # Syntax highlighting
│   │   ├── cmp.lua         # Completion
│   │   ├── telescope.lua   # Fuzzy finder
│   │   ├── neo-tree.lua    # File explorer
│   │   ├── code-runner.lua # Code execution
│   │   ├── hardtime.lua    # Vim training
│   │   └── dap.lua         # Debugging
│   └── polish.lua          # Final customizations
└── README.md
```

## ⌨️ Key Mappings

Leader key: `Space` | Local leader: `,`

### File Navigation
- `<leader>e` - Toggle file explorer
- `<leader>o` - Focus file explorer

### Fuzzy Finding (Telescope)
- `<leader>ff` - Find files
- `<leader>fg` - Find words (grep)
- `<leader>fb` - Find buffers
- `<leader>fo` - Recent files
- `<leader>fh` - Help tags
- `<leader>fk` - Keymaps

### Buffer Management
- `<leader>c` - Close buffer
- `Shift+l` - Next buffer
- `Shift+h` - Previous buffer

### Window Navigation
- `Ctrl+h/j/k/l` - Move between windows

### LSP Actions
- `gd` - Go to definition
- `gr` - Show references
- `K` - Hover documentation
- `<leader>la` - Code action
- `<leader>lr` - Rename symbol
- `<leader>lf` - Format file
- `[d` / `]d` - Previous/Next diagnostic

### Code Execution
- `<leader>r` - Run code
- `<leader>rf` - Run file
- `<leader>rc` - Close runner

### Debugging
- `<leader>db` - Toggle breakpoint
- `<leader>dc` - Continue/Start
- `<leader>di` - Step into
- `<leader>do` - Step over
- `<leader>dt` - Terminate
- `<leader>du` - Toggle DAP UI

### Git
- `<leader>gg` - Open Neogit
- `<leader>gd` - Diff view
- `<leader>gh` - File history

### Terminal
- `<leader>tt` - Toggle terminal
- `<leader>tf` - Floating terminal
- `<leader>th` - Horizontal terminal

### Utility
- `<leader>w` - Save file
- `<leader>q` - Quit
- `Esc` - Clear search highlights

## 🎨 Customization

### Change Theme
Edit `lua/polish.lua`:
```lua
vim.cmd.colorscheme("catppuccin") -- or tokyonight, etc.
```

### Modify Keymaps
Edit `lua/plugins/astrocore.lua` in the `mappings` section.

### Add/Remove Languages
Edit `lua/community.lua` to import/remove language packs.

### Disable Hardtime
Comment out the hardtime import in `lua/community.lua` or set `enabled = false` in `lua/plugins/hardtime.lua`.

## 🔧 Maintenance

- **Update plugins**: `:Lazy sync`
- **Update LSPs**: `:Mason` then press `U`
- **Update AstroNvim**: `:AstroUpdate`
- **Check health**: `:checkhealth`
- **Clean unused plugins**: `:Lazy clean`

## 🐛 Troubleshooting

### LSP not working?
1. Run `:LspInfo` to check status
2. Open `:Mason` and install the required server
3. Restart Neovim

### Code runner fails?
Make sure you have the compiler/interpreter installed:
- C/C++: `gcc` or `clang`
- Rust: `rustc` and `cargo`
- Go: `go`
- Python: `python3`
- Java: `javac` and `java`

### Slow startup?
Run `:Lazy profile` to identify slow plugins.

### Treesitter errors?
Run `:TSUpdate all` to update parsers.

## 📝 Notes

- Auto-formatting happens on save for most file types
- Trailing whitespace is automatically removed on save
- C/C++ auto-includes work via clangd's IWYU (Include What You Use)
- Hardtime is configured in strict mode to build better Vim habits

## 📄 License

Feel free to use this configuration however you like. No restrictions!

## 🤝 Contributing

This is my personal config, but if you have suggestions or improvements, feel free to open an issue or PR!

---

**Enjoy coding! 🎉**
