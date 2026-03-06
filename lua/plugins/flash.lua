return {
  "folke/flash.nvim",
  event = "VeryLazy",
  config = function()
    require("flash").setup({
      search = {
        exclude = {
          "notify",
          "cmp_menu",
          "noice",
          "flash_prompt",
        },
      },
    })
    vim.keymap.set({ "n", "x", "o" }, "s", function()
      require("flash").jump()
    end)
    vim.keymap.set({ "n", "x", "o" }, "S", function()
      require("flash").treesitter()
    end)
    vim.keymap.set("o", "r", function()
      require("flash").remote()
    end)
  end,
}
