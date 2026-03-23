# My Neovim Setup

A modern, feature-rich Neovim configuration optimized for Python development with AI assistance, LSP integration, and a beautiful UI.

## 📚 Documentation

- **[PLUGINS.md](PLUGINS.md)** - Complete list of all plugins with descriptions and features
- **[SHORTCUTS.md](SHORTCUTS.md)** - Comprehensive keybindings reference
- **Configuration Files**: `lua/plugins/` - Individual plugin configurations

## ✨ Features

- 🤖 **AI-Powered Coding** - Claude Code & GitHub Copilot integration
- 🔧 **Full LSP Support** - Intelligent completions, diagnostics, and refactoring
- 🐍 **Python Development** - Type checking (ty), linting (ruff, flake8)
- 🎨 **Beautiful UI** - Catppuccin theme with smooth animations
- 📁 **Smart Navigation** - Telescope, Harpoon, Neo-tree
- 🔀 **Git Integration** - GitSigns, worktrees, GitHub (Octo)
- ⚡ **Fast Startup** - Lazy loading with lazy.nvim

## 🚀 Installation

```bash
# Clone this configuration
git clone https://github.com/theArjun/my-nvim-config ~/.config/nvim

# Launch Neovim (plugins will auto-install)
nvim
```

## 📦 Plugin Manager

This setup uses [lazy.nvim](https://github.com/folke/lazy.nvim) for plugin management with:
- Automatic plugin installation
- Lazy loading for fast startup
- Lock file for version consistency
- Easy updates with `:Lazy sync`

## 🔧 Requirements

- Neovim 0.10.0+
- Git
- [ripgrep](https://github.com/BurntSushi/ripgrep) - For telescope grep
- [Node.js](https://nodejs.org/) - For Copilot
- Python 3.8+ - For Python development features

### Optional Tools

```bash
# Python tools
pip install ty ruff flake8 refurb bandit

# System tools
brew install ripgrep ctags
```

## 🎯 Quick Start

After installation:

```vim
:Lazy              " Manage plugins
:Mason             " Install LSP servers
:checkhealth       " Verify setup
:Telescope         " Fuzzy finder
```

## 📖 Learn More

- Press `<leader>fk` to search keymaps in Telescope
- Press `<leader>fh` to search help documentation
- Check [SHORTCUTS.md](SHORTCUTS.md) for all keybindings

---

## Sessionizer

```bash
#!/bin/bash

# Original Source
# https://github.com/ThePrimeagen/.dotfiles/blob/master/bin/.local/scripts/tmux-sessionizer

selected=$(find ~/projects -mindepth 1 -maxdepth 2 -type d | fzf)

if [[ -z $selected ]]; then
  exit 0
fi

selected_name=$(basename "$selected" | tr . _)
tmux_running=$(pgrep tmux)

# if not inside tmux session, and not running
if [[ -z $TMUX ]] && [[ -z $tmux_running ]]; then
    tmux new-session -s $selected_name -c $selected
    exit 0
fi

if ! tmux has-session -t=$selected_name 2> /dev/null; then
    tmux new-session -ds $selected_name -c $selected
fi

# if outside just attach
if [[ -z $TMUX ]]; then
  tmux attach -t $selected_name
  exit 0
fi

tmux switch-client -t $selected_name
```
