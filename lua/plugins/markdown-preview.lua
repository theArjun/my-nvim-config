return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = function(plugin)
    if vim.fn.executable("npm") == 1 then
      vim.fn.system("cd " .. plugin.dir .. "/app && npm install")
    end
  end,
  init = function()
    vim.g.mkdp_auto_close = 0
    vim.g.mkdp_refresh_slow = 0
    vim.g.mkdp_browser = ""
  end,
  config = function()
    vim.keymap.set("n", "<leader>md", "<cmd>MarkdownPreviewToggle<CR>", {
      desc = "Toggle Markdown Preview",
    })
  end,
}
