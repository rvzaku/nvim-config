# 🚀 Personal AstroNvim v5 Configuration

> A production-grade, minimal, and fully-featured Neovim IDE setup built on AstroNvim v5

[![Neovim](https://img.shields.io/badge/Neovim-0.10+-green.svg?style=flat-square&logo=neovim)](https://neovim.io)
[![AstroNvim](https://img.shields.io/badge/AstroNvim-v5-orange.svg?style=flat-square)](https://astronvim.com)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=flat-square)](LICENSE)

## 📋 Table of Contents

- [Overview](#-overview)
- [Features](#-features)
- [Prerequisites](#-prerequisites)
- [Installation](#-installation)
- [Plugin Ecosystem](#-plugin-ecosystem)
- [Language Support](#-language-support)
- [Keybindings](#-keybindings)
- [Configuration Structure](#-configuration-structure)
- [Customization](#-customization)
- [Maintenance](#-maintenance)
- [Troubleshooting](#-troubleshooting)
- [Performance](#-performance)
- [Contributing](#-contributing)
- [Acknowledgments](#-acknowledgments)

## 🎯 Overview

This is my personal Neovim configuration built on top of [AstroNvim v5](https://astronvim.com), designed for professional software development across multiple languages. It emphasizes:

- **Minimalism**: Only essential, high-quality plugins
- **Performance**: Lazy loading and optimized startup (~50-100ms)
- **Maintainability**: Well-documented, standards-compliant code
- **Productivity**: Comprehensive IDE features without bloat
- **Longevity**: Future-proof with stable plugin versions

### Philosophy

This configuration follows the "batteries-included but replaceable" philosophy - everything works out of the box, but components can be easily swapped or removed based on your workflow.

## ✨ Features

### Core Capabilities

- 🔍 **Fuzzy Finding** - Telescope with FZF native integration
- 📁 **File Explorer** - Neo-tree with git integration
- 🎨 **Syntax Highlighting** - Treesitter with 20+ languages
- 🧠 **LSP Integration** - Full IDE features via Mason
- 🐛 **Debugging** - DAP support with visual UI
- 🎯 **Code Execution** - One-key run for 15+ languages
- 🌿 **Git Integration** - LazyGit, Neogit, Gitsigns, Diffview
- 🎓 **Vim Training** - Hardtime plugin (strict mode)
- 💡 **Auto-completion** - nvim-cmp with LSP/Snippets
- 📝 **Formatting** - null-ls with auto-format on save
- 🔄 **Auto-imports** - Smart header/import management
- 🖥️ **Terminal** - Integrated toggleterm
- 🎨 **UI Enhancement** - Noice, Illuminate, Indent guides
- 📊 **Diagnostics** - Trouble UI for better error navigation

### Language-Specific Features

| Feature | C/C++ | Rust | Go | Java | Python | TypeScript |
|---------|-------|------|-----|------|--------|------------|
| LSP | clangd | rust-analyzer | gopls | jdtls | pyright | tsserver |
| Auto-imports | ✅ | ✅ | ✅ | ✅ | ✅ | ✅ |
| Formatting | clang-format | rustfmt | gofumpt | google-java-format | black+isort | prettier |
| Debugging | codelldb | codelldb | delve | jdtls | debugpy | node2 |
| Code Runner | gcc/g++ | cargo | go run | javac+java | python3 | ts-node/node |

## 📦 Prerequisites

### Required

- **Neovim** ≥ 0.10.0
- **Git** ≥ 2.19.0
- **A Nerd Font** - [Download here](https://www.nerdfonts.com/)
  - Recommended: JetBrainsMono Nerd Font, FiraCode Nerd Font

### Recommended

- **ripgrep** - Fast grep for Telescope
- **fd** - Fast file finder for Telescope
- **LazyGit** - Terminal UI for git
- **delta** - Better git diffs
- **Node.js** - For some LSP servers

### Language-Specific Tools

Install compilers/interpreters for languages you use:

```bash
# C/C++
sudo apt install build-essential  # Linux
xcode-select --install            # macOS

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Go
# Download from https://go.dev/dl/

# Java
sudo apt install default-jdk      # Linux
brew install openjdk             # macOS

# Python
sudo apt install python3 python3-pip

# Node.js/TypeScript
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -
sudo apt install nodejs
npm install -g typescript ts-node
```

## 🚀 Installation

### Quick Install

```bash
# 1. Backup existing configuration
mv ~/.config/nvim ~/.config/nvim.backup
mv ~/.local/share/nvim ~/.local/share/nvim.backup
mv ~/.local/state/nvim ~/.local/state/nvim.backup
mv ~/.cache/nvim ~/.cache/nvim.backup

# 2. Clone this repository
git clone https://github.com/yourusername/astronvim-config.git ~/.config/nvim

# 3. Install LazyGit (recommended)
# macOS
brew install lazygit

# Ubuntu/Debian
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

# Arch Linux
sudo pacman -S lazygit

# 4. Launch Neovim
nvim
```

### First Launch

On first launch, Neovim will:

1. Bootstrap lazy.nvim
2. Install AstroNvim core
3. Clone and install all plugins (~2-3 minutes)
4. Auto-install LSP servers, formatters, and debuggers

After installation completes:

```vim
" Check installation health
:checkhealth

" View installed plugins
:Lazy

" View installed LSP servers
:Mason

" Update everything
:AstroUpdate
```

## 🔌 Plugin Ecosystem

### Core Framework

| Plugin | Purpose |
|--------|---------|
| [AstroNvim](https://github.com/AstroNvim/AstroNvim) | Base configuration framework |
| [lazy.nvim](https://github.com/folke/lazy.nvim) | Plugin manager |
| [AstroCommunity](https://github.com/AstroNvim/astrocommunity) | Curated plugin collection |

### Essential Plugins

| Category | Plugins |
|----------|---------|
| **File Navigation** | neo-tree, telescope.nvim, telescope-fzf-native |
| **LSP** | mason.nvim, nvim-lspconfig, astrolsp |
| **Completion** | nvim-cmp, cmp-nvim-lsp, cmp-buffer, cmp-path |
| **Syntax** | nvim-treesitter, nvim-treesitter-textobjects |
| **Git** | lazygit.nvim, neogit, gitsigns.nvim, diffview.nvim |
| **Debugging** | nvim-dap, nvim-dap-ui, nvim-dap-virtual-text |
| **Formatting** | none-ls.nvim (null-ls fork) |
| **Terminal** | toggleterm.nvim |
| **UI** | noice.nvim, vim-illuminate, indent-blankline.nvim |
| **Diagnostics** | trouble.nvim |
| **Motion** | flash.nvim, hardtime.nvim |
| **Code Runner** | code_runner.nvim |
| **Utilities** | plenary.nvim, nui.nvim, nvim-nio |

### Language Packs (AstroCommunity)

Pre-configured language support via community packs:

- lua, python, typescript, rust, go, cpp
- java, bash, json, yaml, toml, markdown, docker

## 🌍 Language Support

### Auto-Import/Header Management

| Language | Method | Trigger |
|----------|--------|---------|
| **C/C++** | clangd IWYU | Auto on completion |
| **Rust** | rust-analyzer | Auto on completion |
| **Go** | gopls | Auto on save |
| **Java** | jdtls | `<leader>la` (code action) |
| **Python** | pyright | `<leader>la` (code action) |
| **TypeScript/JS** | tsserver | Auto on completion |

### Code Execution

Press `<leader>r` to execute code in the current buffer:

| Language | Command |
|----------|---------|
| C | `gcc $file -o $exe && ./$exe` |
| C++ | `g++ -std=c++17 $file -o $exe && ./$exe` |
| Rust | `rustc $file && ./$exe` |
| Go | `go run $file` |
| Java | `javac $file && java $class` |
| Python | `python3 -u $file` |
| JavaScript | `node $file` |
| TypeScript | `ts-node $file` |
| Bash | `bash $file` |
| Lua | `lua $file` |

Project-level execution with `<leader>rp`:

- Cargo projects: `cargo run`
- npm projects: `npm start`
- Go modules: `go run .`
- CMake: Auto-build and run

## ⌨️ Keybindings

> **Leader Key**: `<Space>`
> **Local Leader**: `,`

### File Operations

| Key | Action |
|-----|--------|
| `<leader>e` | Toggle file explorer |
| `<leader>o` | Focus file explorer |
| `<leader>ff` | Find files |
| `<leader>fw` | Find words (live grep) |
| `<leader>fb` | Find buffers |
| `<leader>fo` | Find recent files |
| `<leader>fh` | Help tags |
| `<leader>fk` | Keymaps |
| `<leader>/` | Search in current buffer |

### LSP Operations

| Key | Action |
|-----|--------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gr` | Show references |
| `gi` | Go to implementation |
| `gt` | Go to type definition |
| `K` | Hover documentation |
| `<leader>la` | Code actions |
| `<leader>lr` | Rename symbol |
| `<leader>lf` | Format buffer |
| `<leader>ld` | Line diagnostics |
| `<leader>ls` | Signature help |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |

### Git Operations

| Key | Action |
|-----|--------|
| `<leader>gg` | Open LazyGit |
| `<leader>gn` | Open Neogit |
| `<leader>gc` | Git commits (telescope) |
| `<leader>gs` | Git status (telescope) |
| `<leader>gb` | Git branches (telescope) |
| `<leader>gd` | Open Diffview |
| `<leader>gh` | File history (diffview) |
| `<leader>gp` | Preview hunk |
| `<leader>gS` | Stage hunk |
| `<leader>gr` | Reset hunk |
| `<leader>gR` | Reset buffer |
| `<leader>gu` | Undo stage hunk |
| `[g` | Previous git hunk |
| `]g` | Next git hunk |

### Debugging (DAP)

| Key | Action |
|-----|--------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dB` | Conditional breakpoint |
| `<leader>dc` | Continue |
| `<leader>di` | Step into |
| `<leader>do` | Step over |
| `<leader>dO` | Step out |
| `<leader>dt` | Terminate |
| `<leader>du` | Toggle DAP UI |
| `<leader>dr` | Toggle REPL |

### Code Runner

| Key | Action |
|-----|--------|
| `<leader>r` | Run code |
| `<leader>rf` | Run file |
| `<leader>rp` | Run project |
| `<leader>rc` | Close runner |

### Buffer Management

| Key | Action |
|-----|--------|
| `<S-h>` | Previous buffer |
| `<S-l>` | Next buffer |
| `<leader>c` | Close buffer |
| `<leader>C` | Force close buffer |
| `<leader>b` | List buffers |

### Window Navigation

| Key | Action |
|-----|--------|
| `<C-h>` | Move to left window |
| `<C-j>` | Move to bottom window |
| `<C-k>` | Move to top window |
| `<C-l>` | Move to right window |
| `<leader>wv` | Vertical split |
| `<leader>wh` | Horizontal split |
| `<leader>wc` | Close window |
| `<leader>wo` | Close other windows |

### Terminal

| Key | Action |
|-----|--------|
| `<leader>tt` | Toggle terminal |
| `<leader>tf` | Float terminal |
| `<leader>th` | Horizontal terminal |
| `<leader>tv` | Vertical terminal |
| `<C-\>` | Quick toggle |
| `<Esc>` (in terminal) | Exit terminal mode |

### Diagnostics (Trouble)

| Key | Action |
|-----|--------|
| `<leader>xx` | Toggle diagnostics |
| `<leader>xX` | Buffer diagnostics |
| `<leader>xl` | Location list |
| `<leader>xq` | Quickfix list |

### Utility

| Key | Action |
|-----|--------|
| `<leader>w` | Save file |
| `<leader>q` | Quit |
| `<leader>Q` | Force quit all |
| `<Esc>` | Clear search highlights |
| `J` (visual) | Move line down |
| `K` (visual) | Move line up |

## 📂 Configuration Structure

```
~/.config/nvim/
├── init.lua                 # Main entry point
└── lua/
    ├── community.lua        # AstroCommunity imports
    ├── plugins/            # Plugin configurations
    │   ├── astrocore.lua   # Core settings & keymaps
    │   ├── astrolsp.lua    # LSP configuration
    │   ├── astroui.lua     # UI settings
    │   ├── mason.lua       # Tool installer
    │   ├── none-ls.lua     # Formatting
    │   ├── treesitter.lua  # Syntax highlighting
    │   ├── telescope.lua   # Fuzzy finder
    │   ├── neo-tree.lua    # File explorer
    │   ├── cmp.lua         # Completion
    │   ├── toggleterm.lua  # Terminal
    │   ├── lazygit.lua     # Git TUI
    │   ├── gitsigns.lua    # Git signs
    │   ├── code-runner.lua # Code execution
    │   ├── hardtime.lua    # Vim training
    │   └── dap.lua         # Debugging
    └── polish.lua          # Final customizations
```

## 🎨 Customization

### Change Colorscheme

Edit `lua/polish.lua`:

```lua
vim.cmd.colorscheme("catppuccin") -- or tokyonight, gruvbox
```

Available themes:
- `astrodark` (default)
- `catppuccin`
- `tokyonight`
- `gruvbox`

### Disable Copilot

Remove from `lua/community.lua`:

```lua
-- Remove or comment out:
{ import = "astrocommunity.completion.copilot-lua-cmp" },
```

### Adjust Hardtime Difficulty

Edit `lua/plugins/hardtime.lua`:

```lua
opts = {
  max_count = 4,              -- Increase for easier (default: 2)
  restriction_mode = "hint",  -- Use "hint" instead of "block"
  disable_mouse = false,      -- Enable mouse
}
```

### Add Custom Keybindings

Edit `lua/plugins/astrocore.lua` under `mappings`:

```lua
mappings = {
  n = {
    ["<leader>custom"] = { "<cmd>CustomCommand<cr>", desc = "My custom command" },
  },
}
```

### Add Language Support

1. Add LSP to `lua/plugins/mason.lua`:
```lua
ensure_installed = {
  "lua_ls", "pyright", "your_lsp_here",
}
```

2. Add Treesitter parser to `lua/plugins/treesitter.lua`:
```lua
ensure_installed = {
  "lua", "python", "your_language_here",
}
```

3. Add code runner command to `lua/plugins/code-runner.lua`:
```lua
filetype = {
  your_filetype = "your_command $fileName",
}
```

## 🔧 Maintenance

### Update Everything

```vim
" Update all plugins
:Lazy sync

" Update AstroNvim
:AstroUpdate

" Update LSP servers/tools
:Mason
" Then press 'U' on each tool

" Update Treesitter parsers
:TSUpdate
```

### Clean Up

```vim
" Remove unused plugins
:Lazy clean

" Clear plugin cache
:Lazy clear

" Check configuration health
:checkhealth
```

### Profile Startup Time

```vim
" See plugin load times
:Lazy profile

" Measure startup time from terminal
nvim --startuptime startup.log
```

### Backup Strategy

Important directories to backup:

```bash
# Configuration
~/.config/nvim/

# Plugin data
~/.local/share/nvim/

# State files
~/.local/state/nvim/

# Cache
~/.cache/nvim/
```

Backup command:
```bash
tar -czf nvim-backup-$(date +%Y%m%d).tar.gz \
  ~/.config/nvim \
  ~/.local/share/nvim \
  ~/.local/state/nvim
```

## 🐛 Troubleshooting

### LSP Not Starting

**Problem**: No completion, no diagnostics

**Solutions**:
```vim
" Check LSP status
:LspInfo

" Check Mason installation
:Mason

" Restart LSP
:LspRestart

" Check logs
:AstroChangelog
```

### LazyGit Not Working

**Problem**: `stat config.yml: no such file or directory`

**Solution**: The config is auto-created, but you can manually create it:
```bash
mkdir -p ~/.config/lazygit
touch ~/.config/lazygit/config.yml
```

### Telescope No Results

**Problem**: Find files/grep returns nothing

**Solution**: Install required tools:
```bash
# For live grep
sudo apt install ripgrep

# For better file finding
sudo apt install fd-find
```

### Slow Startup

**Problem**: Neovim takes >1s to start

**Solutions**:
1. Check slow plugins: `:Lazy profile`
2. Disable unused language packs in `lua/community.lua`
3. Reduce `ensure_installed` in mason/treesitter configs

### Treesitter Errors

**Problem**: `Error detected while processing ...`

**Solution**:
```vim
:TSUpdate all
" Restart Neovim
```

### Format Not Working

**Problem**: Save doesn't format

**Solutions**:
1. Check formatter installed: `:Mason`
2. Check LSP supports formatting: `:LspInfo`
3. Manually format: `<leader>lf`

### DAP Not Working

**Problem**: Debugging fails

**Solutions**:
```vim
" Check adapter installation
:Mason

" Check DAP configuration
:lua print(vim.inspect(require('dap').configurations))

" View DAP logs
:DapShowLog
```

## ⚡ Performance

### Metrics

- **Startup Time**: ~50-100ms (optimized)
- **Memory Usage**: ~200-300MB (typical workload)
- **Plugin Count**: ~50 (including dependencies)
- **Lazy Loaded**: ~70% of plugins

### Optimization Tips

1. **Disable unused languages**: Remove from `community.lua`
2. **Lazy load plugins**: Most are already lazy-loaded
3. **Use native LSP**: Disable unnecessary none-ls sources
4. **Limit Treesitter**: Only install needed parsers
5. **Profile regularly**: Use `:Lazy profile` to identify bottlenecks

### Startup Breakdown

| Phase | Time | Description |
|-------|------|-------------|
| lazy.nvim bootstrap | ~10ms | Plugin manager init |
| AstroNvim core | ~20ms | Framework loading |
| Eager plugins | ~20ms | Non-lazy plugins |
| Total | ~50ms | Ready to edit |

Lazy-loaded plugins add ~30-50ms on first use but don't affect startup.

## 🤝 Contributing

This is a personal configuration, but suggestions are welcome!

### Reporting Issues

If you find a bug or have a suggestion:

1. Check existing issues
2. Provide your system info: `:checkhealth`
3. Include error messages and logs
4. Describe reproduction steps

### Suggesting Improvements

Feel free to open an issue or PR for:

- Bug fixes
- Documentation improvements
- New features (with rationale)
- Performance optimizations

## 📚 Resources

### Official Documentation

- [AstroNvim Docs](https://docs.astronvim.com)
- [Neovim Docs](https://neovim.io/doc/)
- [lazy.nvim](https://github.com/folke/lazy.nvim)

### Learning Resources

- [Vim Cheatsheet](https://vim.rtorr.com/)
- [Neovim from Scratch](https://www.youtube.com/playlist?list=PLhoH5vyxr6Qq41NFL4GvhFp-WLd5xzIzZ)
- [AstroNvim Walkthrough](https://astronvim.com/Recipes/walkthrough)

### Community

- [AstroNvim Discord](https://discord.astronvim.com)
- [r/neovim](https://reddit.com/r/neovim)
- [Neovim Discourse](https://neovim.discourse.group/)

## 🙏 Acknowledgments

This configuration wouldn't be possible without:

- **AstroNvim Team** - For the excellent framework
- **Neovim Contributors** - For the amazing editor
- **Plugin Authors** - For their incredible work
- **Community** - For endless support and inspiration

Special thanks to the maintainers of:
- lazy.nvim (folke)
- telescope.nvim (nvim-telescope)
- nvim-treesitter (nvim-treesitter)
- mason.nvim (williamboman)
- LazyGit (jesseduffield)

## 📄 License

MIT License - feel free to use and modify as you wish!

---

<div align="center">

**[⬆ Back to Top](#-personal-astronvim-v5-configuration)**

Made with ❤️ and Neovim

</div>
