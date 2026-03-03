return {
  "ThePrimeagen/git-worktree.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("git-worktree").setup({
      change_directory_command = "cd", -- default: "cd", can use "tcd" for tab-local
      update_on_change = true, -- update current buffer when switching worktrees
      update_on_change_command = "e .", -- command to run if file not found in new worktree
      clearjumps_on_change = true, -- clear jumplist when switching worktrees
      autopush = false, -- automatically push new worktrees to upstream
    })
    
    -- Load the telescope extension
    require("telescope").load_extension("git_worktree")
    
    -- Keymaps for git-worktree
    vim.keymap.set("n", "<leader>gw", function()
      require("telescope").extensions.git_worktree.git_worktrees()
    end, { desc = "Git Worktrees (list/switch/delete)" })
    
    vim.keymap.set("n", "<leader>gW", function()
      require("telescope").extensions.git_worktree.create_git_worktree()
    end, { desc = "Create Git Worktree" })
  end,
}
