return {
  "dnlhc/glance.nvim",
  config = function()
    require("glance").setup({
      height = 18,
      zindex = 45,
    })
    vim.keymap.set("n", "gp", "<cmd>Glance references<CR>", { desc = "Preview references" })
    vim.keymap.set("n", "gd", "<cmd>Glance definitions<CR>", { desc = "Preview definitions" })
    vim.keymap.set("n", "gy", "<cmd>Glance type_definitions<CR>", { desc = "Preview type definitions" })
    vim.keymap.set("n", "gm", "<cmd>Glance implementations<CR>", { desc = "Preview implementations" })
  end,
}
