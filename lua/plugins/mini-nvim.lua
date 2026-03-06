return {
  "echasnovski/mini.nvim",
  version = false,
  event = "VeryLazy",
  config = function()
    -- Mini indentscope - show indent context
    require("mini.indentscope").setup({
      draw = {
        delay = 100,
        animation = require("mini.indentscope").gen_animation.none(),
      },
    })

    -- Mini ai - extended text objects
    require("mini.ai").setup({
      n_lines = 500,
    })

    -- Mini align - align text
    require("mini.align").setup()
  end,
}
