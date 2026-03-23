# Neovim Shortcuts & Keybindings Reference

> Comprehensive documentation of all keybindings and shortcuts configured in this Neovim setup

## Table of Contents
- [General Navigation](#general-navigation)
- [File Management](#file-management)
- [Buffer Management](#buffer-management)
- [LSP & Coding](#lsp--coding)
- [Git Integration](#git-integration)
- [Snippets & Motion](#snippets--motion)
- [Find & Replace](#find--replace)
- [Testing & Debugging](#testing--debugging)
- [Search & Navigation](#search--navigation)
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

### Copy File Paths
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>cp` | Copy relative file path to clipboard | Native |
| `<leader>cP` | Copy absolute file path to clipboard | Native |

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
| `<leader>bd` | Close current buffer | barbar |

**Note:** Removed `<leader>q` and `<leader>ba` to prevent accidental closes

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

### Surrounding Text (vim-surround)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `cs<old><new>` | Change surrounding chars/tags | vim-surround |
| `ds<char>` | Delete surrounding chars/tags | vim-surround |
| `ys<motion><char>` | Add surrounding chars/tags | vim-surround |
| `S<char>` | Add surrounding in visual mode | vim-surround |

### Code Outline (Aerial)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>a` | Toggle code outline | aerial.nvim |
| `{` (in outline) | Jump to previous symbol | aerial.nvim |
| `}` (in outline) | Jump to next symbol | aerial.nvim |

### Enhanced Motion (flash.nvim)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `s` | Jump to character (enhanced) | flash.nvim |
| `S` | Jump using treesitter nodes | flash.nvim |
| `r` (operator pending) | Remote operation target | flash.nvim |

### Keybinding Helper (which-key.nvim)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>` + wait | Show available keybindings | which-key |
| (auto-display) | Displays hints after 300ms | which-key |

### Treesitter Text Objects

#### Incremental Selection
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `gnn` | Initialize selection | treesitter |
| `grn` | Expand selection | treesitter |
| `grc` | Expand to scope | treesitter |
| `grm` | Shrink selection | treesitter |

#### Text Objects (use with operators or visual mode)
| Text Object | Description | Example Usage |
|-------------|-------------|---------------|
| `af` | Outer function | `vaf` (select), `daf` (delete), `caf` (change) |
| `if` | Inner function | `vif` (select), `dif` (delete), `cif` (change) |
| `ac` | Outer class | `vac` (select), `dac` (delete), `cac` (change) |
| `ic` | Inner class | `vic` (select), `dic` (delete), `cic` (change) |

**Note:** Text objects must be preceded by an operator (`d`, `c`, `y`) or visual mode (`v`, `V`).  
They don't work standalone in normal mode.

---

## Git Integration

### Git Worktree
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>gw` | List/switch/delete worktrees | git-worktree |
| `<leader>gW` | Create new worktree | git-worktree |

#### In Worktree Telescope Window
| Shortcut | Action |
|----------|--------|
| `<Enter>` | Switch to worktree |
| `<C-d>` | Delete worktree |
| `<C-f>` | Toggle forcing deletion |

### GitSigns
- Configured but keymaps are commented out
- Provides git diff indicators in sign column

---

## Snippets & Motion

---

## Find & Replace

### Spectre (Project Find & Replace)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>S` | Toggle Spectre panel | nvim-spectre |
| `<leader>sw` | Search current word | nvim-spectre |
| `<leader>sw` (visual) | Search current selection | nvim-spectre |
| `<leader>sp` | Search in current file | nvim-spectre |

**Usage:** Type search pattern, edit replacement, and commit changes across files with preview.

---

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

**Note:** Faster fuzzy finding with native fzf algorithm via telescope-fzf-native.nvim

### Telescope LSP
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>fs` | Find document symbols | telescope |
| `<leader>fw` | Find workspace symbols | telescope |
| `<leader>fd` | Find definitions | telescope |
| `<leader>fi` | Find implementations | telescope |
| `<leader>fr` | Find references | telescope |

### Glance (Preview Window)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `gp` | Preview references | glance.nvim |
| `gd` | Preview definitions | glance.nvim |
| `gy` | Preview type definitions | glance.nvim |
| `gm` | Preview implementations | glance.nvim |

### Trouble (Diagnostics)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>xx` | Toggle diagnostics | trouble |
| `<leader>xf` | Toggle & focus diagnostics | trouble |
| `<leader>xX` | Toggle buffer diagnostics | trouble |
| `<leader>cs` | Show document symbols | trouble |
| `<leader>ts` | Toggle document symbols (focused) | trouble |
| `<leader>cl` | Show LSP info | trouble |
| `<leader>clf` | Focus LSP info | trouble |
| `<leader>xL` | Show location list | trouble |
| `<leader>xQ` | Show quickfix list | trouble |

### Tagbar (Code Outline)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<F8>` | Toggle Tagbar | tagbar |

---

---

## Python Development

## Python Development

### Virtual Environment
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>ve` | Select virtualenv | venv-selector |
| `<leader>vc` | Select cached virtualenv | venv-selector |

### Linting & Formatting (ALE)
- **Linters:** ruff, flake8, refurb, bandit
- **Formatter:** ruff_format (auto-format on save)
- No custom keybindings (runs automatically)

---

## Session & Undo Management

### Undo Tree
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>ut` | Toggle undo tree | undotree |

**Features:** Visualize and navigate the complete undo history

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
- **Wilder** - Enhanced command line UI

### Renaming with Preview (inc-rename)
| Shortcut | Action | Plugin |
|----------|--------|--------|
| `<leader>rn` | Rename with live preview | inc-rename.nvim |

**Features:** Shows rename preview in command line before confirming

---

### Plugins Without Custom Keybindings
- **Autopairs** - Automatically closes brackets/quotes
- **Fidget** - LSP progress notifications
- **NavBuddy** - LSP-powered navigation panel
- **Todo-comments** - Highlights TODO, FIXME, etc.
- **Vim-illuminate** - Highlights word under cursor
- **Wakatime** - Automatic time tracking
- **Noice** - Better UI for command line/messages (works automatically)
- **Dressing** - Better input/select UI (works automatically)
- **Telescope-fzf-native** - Better fuzzy search (works automatically)

---

## Conflicts & Notes

### Key Binding Conflicts
✅ **All conflicts resolved!**

**Note about `<C-h/j/k/l>`:**
- Intentionally shared by tmux-navigator, split navigation, and terminal navigation
- Provides consistent navigation across all contexts

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
- `<leader>a` - Aerial outline/navigation
- `<leader>c` - Copy file path
  - `<leader>cp` - Copy relative file path
  - `<leader>cP` - Copy absolute file path
- `<leader>f` - Fuzzy finding (Telescope)
- `<leader>g` - Git operations (gw for worktrees)
- `<leader>h` - Harpoon
- `<leader>n` - Neo-tree
- `<leader>rn` - Rename with preview
- `<leader>S` - Spectre (find & replace)
- `<leader>ut` - Undo tree
- `<leader>v` - Virtual environment (ve, vc)
- `<leader>x` - Diagnostics/Trouble
- `<leader>z` - Zen mode
- `g` - Go-to operations (LSP, glance: gp, gd, gy, gm)
- `gc` - Comment operations
- `gr` - References/Treesitter

---

**Last Updated:** 2026-03-06
**Config Location:** `/Users/arjun.adhikari/workspace/misc/my-nvim-config/`
