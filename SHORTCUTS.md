# Neovim Shortcuts & Keybindings Reference

> Comprehensive documentation of all keybindings and shortcuts configured in this Neovim setup

## Table of Contents
- [General Navigation](#general-navigation)
- [File Management](#file-management)
- [Buffer Management](#buffer-management)
- [LSP & Coding](#lsp--coding)
- [Git Integration](#git-integration)
- [Testing & Debugging](#testing--debugging)
- [Search & Navigation](#search--navigation)
- [Terminal](#terminal)
- [Python Development](#python-development)
- [UI & Appearance](#ui--appearance)
- [Miscellaneous](#miscellaneous)

---

## General Navigation

### Window & Split Navigation
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<C-h>` | Navigate to left window/split | tmux-navigator |
| `<C-j>` | Navigate to down window/split | tmux-navigator |
| `<C-k>` | Navigate to up window/split | tmux-navigator |
| `<C-l>` | Navigate to right window/split | tmux-navigator |
| `<C-\>` | Navigate to previous window | tmux-navigator |
| `<leader>hs` | Create horizontal split | Native |
| `<leader>vs` | Create vertical split | Native |

### File Saving & Closing
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<C-s>` | Save current file | Native |
| `<leader>q` | Close current file | Native |

---

## File Management

### Neo-tree (File Explorer)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<C-n>` | Toggle file tree | neo-tree |
| `<leader>nf` | Focus on file tree | neo-tree |
| `<leader>nd` | Toggle and reveal current file | neo-tree |
| `<leader>nb` | Show buffer list in tree | neo-tree |

### Harpoon (Quick File Marks)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>hm` | Mark current file | harpoon |
| `<leader>ha` | Toggle harpoon menu | harpoon |
| `<leader>hn` | Navigate to next mark | harpoon |
| `<leader>hp` | Navigate to previous mark | harpoon |
| `<leader>ht` | Open marks in Telescope | harpoon |

---

## Buffer Management

### Buffer Navigation (Barbar)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<Tab>` | Next buffer | barbar |
| `<S-Tab>` | Previous buffer | barbar |
| `<leader>bc` | Close current buffer | barbar |
| `<leader>ba` | Close all buffers | Native |

---

## LSP & Coding

### Language Server Protocol
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `K` | Show hover documentation | nvim-lspconfig |
| `gd` | Go to definition | nvim-lspconfig |
| `gD` | Go to declaration | nvim-lspconfig |
| `gi` | Go to implementation | nvim-lspconfig |
| `go` | Go to type definition | nvim-lspconfig |
| `gr` | Show references | nvim-lspconfig |
| `gs` | Show signature help | nvim-lspconfig |
| `rn` | Rename symbol | nvim-lspconfig |
| `<F3>` | Format code | nvim-lspconfig |
| `<F4>` | Show code actions | nvim-lspconfig |
| `<leader>ca` | Show code actions (alt) | nvim-lspconfig |
| `<leader>mp` | Format code (alt) | nvim-lspconfig |

### Code Completion (nvim-cmp)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<C-k>` | Previous suggestion | nvim-cmp |
| `<C-j>` | Next suggestion | nvim-cmp |
| `<C-b>` | Scroll documentation up | nvim-cmp |
| `<C-f>` | Scroll documentation down | nvim-cmp |
| `<C-Space>` | Trigger completion | nvim-cmp |
| `<C-e>` | Abort completion | nvim-cmp |
| `<CR>` | Confirm selection | nvim-cmp |

### Comments
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `gcc` | Toggle line comment | Comment.nvim |
| `gbc` | Toggle block comment | Comment.nvim |
| `gcO` | Add comment above | Comment.nvim |
| `gco` | Add comment below | Comment.nvim |
| `gcA` | Add comment at end of line | Comment.nvim |

### Treesitter Text Objects
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `gnn` | Initialize selection | treesitter |
| `grn` | Expand selection | treesitter |
| `grc` | Expand to scope | treesitter |
| `grm` | Shrink selection | treesitter |
| `af` | Select outer function | treesitter |
| `if` | Select inner function | treesitter |
| `ac` | Select outer class | treesitter |
| `ic` | Select inner class | treesitter |

### AI Assistant (Copilot)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<Tab>` | Accept suggestion | copilot |
| Default bindings | - | copilot |

---

## Git Integration

### Octo (GitHub Integration)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>O` | Open Octo menu | octo |

### GitSigns
- Configured but keymaps are commented out
- Provides git diff indicators in sign column

---

## Testing & Debugging

### Django Tools
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>djs` | Debug Django server | django-tools |
| `<leader>tt` | Test nearest function/method | django-tools |
| `<leader>tf` | Test current file | django-tools |
| `<leader>ts` | Show test summary | django-tools |
| `<leader>to` | Show test output | django-tools |

---

## Search & Navigation

### Telescope (Fuzzy Finder)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>ff` | Find files | telescope |
| `<leader>fg` | Live grep (search text) | telescope |
| `<leader>fb` | Find buffers | telescope |
| `<leader>fh` | Find help tags | telescope |
| `<leader>fo` | Find old files (recent) | telescope |
| `<leader>fk` | Find keymaps | telescope |
| `<leader>fc` | Find commands | telescope |
| `<leader>fm` | Find marks | telescope |
| `<leader>ft` | Search in current buffer | telescope |
| `<leader>fz` | Find registers | telescope |

### Telescope LSP
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>fs` | Find document symbols | telescope |
| `<leader>fw` | Find workspace symbols | telescope |
| `<leader>fd` | Find definitions | telescope |
| `<leader>fi` | Find implementations | telescope |
| `<leader>fr` | Find references | telescope |

### Trouble (Diagnostics)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>xx` | Toggle diagnostics | trouble |
| `<leader>xX` | Toggle buffer diagnostics | trouble |
| `<leader>cs` | Show document symbols | trouble |
| `<leader>cl` | Show LSP info | trouble |
| `<leader>xL` | Show location list | trouble |
| `<leader>xQ` | Show quickfix list | trouble |

### Tagbar (Code Outline)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<F8>` | Toggle Tagbar | tagbar |

---

## Terminal

### ToggleTerm
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>tt` | Toggle terminal | toggleterm |
| `<Esc>` | Exit terminal mode | toggleterm |
| `<C-h/j/k/l>` | Navigate from terminal | toggleterm |

**Note:** `<leader>tt` conflicts with Django Tools test command

---

## Python Development

### Virtual Environment
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>vs` | Select virtualenv | venv-selector |
| `<leader>vc` | Select cached virtualenv | venv-selector |

**Note:** `<leader>vs` conflicts with vertical split command

### Linting & Formatting (ALE)
- **Linters:** ruff, flake8, refurb, bandit
- **Formatter:** ruff_format (auto-format on save)
- No custom keybindings (runs automatically)

---

## UI & Appearance

### Notifications
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>nh` | Show notification history | nvim-notify |

### Zen Mode
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>z` | Toggle zen mode | zen-mode |

### Other UI Plugins (No Keybindings)
- **SmoothCursor** - Animated cursor movement
- **Bufferline** - Visual buffer tabs
- **Lualine** - Status line
- **Indent-blankline** - Indentation guides
- **OneDark** - Color scheme
- **Neoscroll** - Smooth scrolling
- **Wilder** - Enhanced command line UI

---

## Miscellaneous

### Plugins Without Custom Keybindings
- **Autopairs** - Automatically closes brackets/quotes
- **Fidget** - LSP progress notifications
- **Flutter-tools** - Dart/Flutter development
- **NavBuddy** - LSP-powered navigation panel
- **Todo-comments** - Highlights TODO, FIXME, etc.
- **Vim-illuminate** - Highlights word under cursor
- **Wakatime** - Automatic time tracking

---

## Conflicts & Notes

### Key Binding Conflicts
⚠️ **Conflicts to be aware of:**
- `<leader>vs` - Both venv-selector and vertical split
- `<leader>tt` - Both toggleterm and django-tools test
- `<C-h/j/k/l>` - Shared by tmux-navigator, split navigation, and terminal navigation

### Leader Key
The leader key is typically set to `<Space>` or `\` - check your `init.lua` for confirmation.

### Function Keys
- `<F3>` - Format code
- `<F4>` - Code actions
- `<F8>` - Toggle Tagbar

---

## Quick Search Tips

**To quickly find a shortcut:**
1. Use your editor's search function (`/` in vim)
2. Search for the action you want (e.g., "format", "test", "git")
3. Or search by key (e.g., "<leader>f", "<C-", "<F")

**Common prefixes:**
- `<leader>f` - Fuzzy finding (Telescope)
- `<leader>d` - Django/debugging
- `<leader>h` - Harpoon
- `<leader>n` - Neo-tree
- `<leader>x` - Diagnostics/Trouble
- `g` - Go-to operations (LSP)
- `gc` - Comment operations
- `gr` - References/Treesitter

---

**Last Updated:** 2026-03-03
**Config Location:** `/Users/arjun.adhikari/workspace/misc/my-nvim-config/`
