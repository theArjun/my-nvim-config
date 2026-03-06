return {
  "mbbill/undotree",
  cmd = "UndotreeToggle",
  config = function()
    vim.keymap.set("n", "<leader>ut", "<cmd>UndotreeToggle<CR>", { desc = "Toggle undo tree" })
    vim.g.undotree_SetFocusWhenToggle = 1
  end,
}
