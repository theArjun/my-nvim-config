return {
  "stevearc/dressing.nvim",
  event = "VeryLazy",
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
  config = function()
    require("dressing").setup({
      input = {
        enabled = true,
        prompt_align = "left",
        insert_only = true,
        start_in_insert = true,
        border = "rounded",
        prefer_width = 40,
        max_width = { 140, 0.9 },
        min_width = { 20, 0.2 },
        buf_options = {},
        win_options = {
          winblend = 10,
        },
        get_prompt = function()
          return ""
        end,
      },
      select = {
        enabled = true,
        backend = { "telescope", "fzf", "builtin" },
        trim_prompt = true,
        telescope = require("telescope.themes").get_dropdown({}),
      },
    })
  end,
}
