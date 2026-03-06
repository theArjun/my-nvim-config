return {
  "iamcco/markdown-preview.nvim",
  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
  ft = { "markdown" },
  build = "cd app && npm install",
  init = function()
    vim.g.mkdp_auto_close = 0
    vim.g.mkdp_refresh_slow = 0
  end,
  config = function()
    vim.keymap.set("n", "<leader>md", "<cmd>MarkdownPreviewToggle<CR>", {
      desc = "Toggle Markdown Preview",
    })
  end,
}
