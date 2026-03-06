return {
  "L3MON4D3/LuaSnip",
  version = "v2.*",
  build = "make install",
  dependencies = { "rafamadriz/friendly-snippets" },
  config = function()
    local luasnip = require("luasnip")
    require("luasnip.loaders.from_vscode").lazy_load()

    vim.keymap.set("i", "<C-k>", function()
      if luasnip.expandable() then
        luasnip.expand()
      end
    end, { noremap = true, silent = true })

    vim.keymap.set("i", "<C-l>", function()
      if luasnip.jumpable(1) then
        luasnip.jump(1)
      end
    end, { noremap = true, silent = true })

    vim.keymap.set("i", "<C-j>", function()
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      end
    end, { noremap = true, silent = true })

    vim.keymap.set("s", "<C-l>", function()
      if luasnip.jumpable(1) then
        luasnip.jump(1)
      end
    end, { noremap = true, silent = true })

    vim.keymap.set("s", "<C-j>", function()
      if luasnip.jumpable(-1) then
        luasnip.jump(-1)
      end
    end, { noremap = true, silent = true })
  end,
}
