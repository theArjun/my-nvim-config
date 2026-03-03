# Neovim Plugins Documentation

> Comprehensive overview of all plugins configured in this Neovim setup

## Table of Contents
- [Core Plugins](#core-plugins)
- [AI & Code Assistance](#ai--code-assistance)
- [LSP & Completion](#lsp--completion)
- [Git Integration](#git-integration)
- [File Navigation & Management](#file-navigation--management)
- [Search & Navigation](#search--navigation)
- [Python Development](#python-development)
- [UI & Appearance](#ui--appearance)
- [Editing & Productivity](#editing--productivity)
- [Testing & Debugging](#testing--debugging)
- [Language-Specific](#language-specific)
- [Utilities](#utilities)

---

## Core Plugins

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **lazy.nvim** | Plugin Manager | Lazy loading, automatic updates, lockfile management |
| **plenary.nvim** | Lua Functions | Common utilities used by many plugins |

---

## AI & Code Assistance

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **claudecode.nvim** | Claude Code Integration | AI-powered coding assistant with IDE integration, diff management, context-aware suggestions |
| **copilot.vim** | GitHub Copilot | Inline AI code completions, context-aware suggestions |
| **CopilotChat.nvim** | Copilot Chat Interface | Interactive AI chat, code explanation, review, optimization, test generation |

---

## LSP & Completion

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **nvim-lspconfig** | LSP Configuration | Language server setup for multiple languages (Lua, Python, Rust, HTML, JSON, etc.) |
| **mason.nvim** | LSP Installer | Automatic installation and management of LSP servers |
| **mason-lspconfig.nvim** | Mason-LSP Bridge | Automatic LSP configuration with Mason |
| **nvim-cmp** | Completion Engine | Intelligent auto-completion with multiple sources |
| **cmp-nvim-lsp** | LSP Completion Source | LSP-based completions for nvim-cmp |
| **none-ls.nvim** | Null-ls Alternative | Code actions and formatting (gitsigns integration) |
| **ale** | Async Linting | Multi-linter support (ruff, flake8, refurb, bandit), auto-formatting on save |
| **ty** | Python Type Checker | 10x-100x faster than pyright, full LSP support |

---

## Git Integration

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **gitsigns.nvim** | Git Decorations | Inline git diff signs, blame info, hunk navigation |
| **git-worktree.nvim** | Git Worktrees | Create, switch, delete worktrees with Telescope integration |

---

## File Navigation & Management

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **neo-tree.nvim** | File Explorer | Modern file tree with git status, buffers view, icons |
| **harpoon** | Quick File Marks | Fast file navigation with marks, Telescope integration |
| **telescope.nvim** | Fuzzy Finder | File search, grep, buffers, LSP symbols, keymaps, commands |
| **tmux-navigator.nvim** | Tmux Integration | Seamless navigation between Neovim and tmux panes |

---

## Search & Navigation

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **telescope.nvim** | Fuzzy Finder | Files, grep, buffers, LSP, commands, help tags |
| **trouble.nvim** | Diagnostics Panel | Organized view of diagnostics, LSP symbols, quickfix |
| **navbuddy** | LSP Navigation | Visual navigation through code structure |
| **tagbar** | Code Outline | Tag-based code structure viewer (requires ctags) |

---

## Python Development

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **venv-selector.nvim** | Virtual Environment | Auto-detect and select Python virtualenvs |
| **neotest-python** | Python Testing | Run and debug pytest, Django tests, unittest |
| **ty** | Type Checking | Fast Python type checker with LSP support |
| **ale (Python)** | Linting | ruff, flake8, refurb, bandit integration |

---

## UI & Appearance

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **catppuccin** | Color Scheme | Modern pastel theme with transparent background, multiple flavors |
| **lualine.nvim** | Status Line | Customizable statusline with git info, diagnostics, LSP status |
| **bufferline.nvim** | Buffer Tabs | Visual buffer tabs at the top |
| **barbar.nvim** | Buffer Bar | Alternative buffer management with icons |
| **indent-blankline.nvim** | Indentation Guides | Visual indentation guides |
| **SmoothCursor.nvim** | Cursor Animation | Smooth cursor movement animation |
| **neoscroll.nvim** | Smooth Scrolling | Smooth scrolling animation |
| **nvim-notify** | Notifications | Fancy notification popups |
| **fidget.nvim** | LSP Progress | LSP progress notifications |
| **zen-mode.nvim** | Distraction-Free | Focus mode by hiding UI elements |

---

## Editing & Productivity

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **nvim-autopairs** | Auto Pairs | Automatically close brackets, quotes, parentheses |
| **Comment.nvim** | Commenting | Smart commenting with language-aware support |
| **vim-illuminate** | Word Highlighting | Highlights other occurrences of word under cursor |
| **wilder.nvim** | Command Line UI | Enhanced command-line completion UI |
| **todo-comments.nvim** | TODO Highlights | Highlights TODO, FIXME, NOTE, etc. in code |

---

## Testing & Debugging

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **neotest** | Testing Framework | Universal test runner interface |
| **neotest-python** | Python Tests | pytest, Django test, unittest integration |
| **django-tools.nvim** | Django Testing | Django-specific test runner and debugging |

---

## Language-Specific

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **nvim-treesitter** | Syntax Parsing | Better syntax highlighting, code folding, text objects |
| **nvim-treesitter-textobjects** | Text Objects | Function/class text objects for selection |
| **nvim-treesitter-context** | Context Display | Show current function/class scope at top |
| **flutter-tools.nvim** | Flutter Development | Dart/Flutter debugging and tooling |

---

## Utilities

| Plugin | Purpose | Key Features |
|--------|---------|--------------|
| **wakatime.nvim** | Time Tracking | Automatic coding time tracking |
| **snacks.nvim** | Utilities | Common utilities for other plugins (used by claudecode) |

---

## Plugin Statistics

| Category | Count |
|----------|-------|
| **Total Plugins** | 34+ |
| **AI/Code Assistance** | 3 |
| **LSP/Completion** | 8 |
| **Git Integration** | 2 |
| **UI/Appearance** | 11 |
| **File Navigation** | 4 |
| **Python Development** | 4 |
| **Testing/Debugging** | 3 |
| **Utilities** | 2 |

---

## Installation Status

All plugins are managed by **lazy.nvim** with:
- ✅ Lazy loading for optimal startup time
- ✅ Automatic installation on first launch
- ✅ Lock file (`lazy-lock.json`) for version consistency
- ✅ Health checks available via `:checkhealth`

---

## Plugin Dependencies

Some plugins require external tools:

| Plugin | External Dependency | Installation |
|--------|-------------------|--------------|
| **telescope.nvim** | ripgrep (rg) | `brew install ripgrep` |
| **tagbar** | ctags | `brew install ctags` |
| **ty** | ty type checker | `pip install ty` |
| **ale** | linters (ruff, flake8, etc.) | `pip install ruff flake8 refurb bandit` |
| **wakatime** | wakatime-cli | Auto-installed by plugin |

---

## Configuration Location

- **Plugin Definitions**: `/Users/arjun.adhikari/.config/nvim/lua/plugins/`
- **Main Config**: `/Users/arjun.adhikari/.config/nvim/init.lua`
- **Lock File**: `/Users/arjun.adhikari/.config/nvim/lazy-lock.json`

---

## Quick Commands

```vim
:Lazy                 " Open lazy.nvim UI
:Lazy sync            " Update all plugins
:Lazy clean           " Remove unused plugins
:Mason                " Open Mason UI for LSP management
:checkhealth          " Check plugin health
:Telescope plugins    " Browse installed plugins
```

---

## Further Reading

- [Shortcuts Documentation](SHORTCUTS.md) - All keybindings and shortcuts
- [Plugin Configurations](lua/plugins/) - Individual plugin config files

---

**Last Updated:** 2026-03-03  
**Config Maintainer:** Arjun Adhikari
