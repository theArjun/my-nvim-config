return {
  "stevearc/dressing.nvim",
  lazy = true,
  init = function()
    vim.ui.select = function(...)
      require("lazy").load({ plugins = { "dressing.nvim" } })
      return vim.ui.select(...)
    end
    vim.ui.input = function(...)
      require("lazy").load({ plugins = { "dressing.nvim" } })
      return vim.ui.input(...)
    end
  end,
  opts = {
    input = {
      enabled = true,
      border = "rounded",
      relative = "cursor",
      prefer_width = 40,
    },
    select = {
      enabled = true,
      backend = { "telescope", "builtin" },
    },
  },
}
