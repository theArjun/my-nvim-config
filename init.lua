require("core-setup")
require("keymaps")

-- lazy plugin manager setup --
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
-- Disable swap --
vim.opt.swapfile = false

local plugins = {
 { import = "plugins" },
}
require("lazy").setup(plugins)

-- Autosave when the window loses focus or buffer is hidden --
vim.cmd [[au FocusLost * silent! wa]]
vim.cmd [[au BufLeave * silent! wa]]
vim.cmd [[au InsertLeave * silent! wa]]

-- Autoreload file changes --
vim.o.autoread = true
vim.o.updatetime = 50
vim.api.nvim_create_autocmd("CursorHold", { pattern = "*", command = "checktime" })

-- Neovide settings --
if vim.g.neovide then
    -- Put anything you want to happen only in Neovide here
    vim.o.guifont = "JetBrainsMono Nerd Font:h18"
	  vim.g.neovide_theme = "catpuccin"
    vim.g.neovide_scale_factor = 1
    vim.g.neovide_transparency = 0.9
    vim.g.neovide_window_blurred = true
    vim.g.neovide_floating_blur_amount_x = 2.0
    vim.g.neovide_floating_blur_amount_y = 2.0
    vim.g.neovide_cursor_animation_length = 0.05
    vim.g.neovide_cursor_trail_size = 0.7
    vim.g.neovide_cursor_vfx_mode = "railgun"
    vim.g.neovide_cursor_antialiasing = true
    vim.g.neovide_refresh_rate = 60
    vim.g.neovide_refresh_rate_idle = 5
    vim.g.neovide_no_idle = false
    vim.g.neovide_scroll_animation_length = 0.4
    vim.g.neovide_hide_mouse_when_typing = true
    vim.g.neovide_confirm_quit = true
    vim.g.neovide_input_use_logo = true
    vim.g.neovide_touch_deadzone = 6.0
    vim.g.neovide_touch_drag_timeout = 0.3
end
