return {
  "monaqa/dial.nvim",
  event = "VeryLazy",
  config = function()
    vim.keymap.set("n", "<C-a>", function() require("dial.map").manipulate("increment", "normal") end, { noremap = true })
    vim.keymap.set("n", "<C-x>", function() require("dial.map").manipulate("decrement", "normal") end, { noremap = true })
    vim.keymap.set("v", "<C-a>", function() require("dial.map").manipulate("increment", "visual") end, { noremap = true })
    vim.keymap.set("v", "<C-x>", function() require("dial.map").manipulate("decrement", "visual") end, { noremap = true })
    vim.keymap.set("v", "g<C-a>", function() require("dial.map").manipulate("increment", "gvisual") end, { noremap = true })
    vim.keymap.set("v", "g<C-x>", function() require("dial.map").manipulate("decrement", "gvisual") end, { noremap = true })
  end,
}
