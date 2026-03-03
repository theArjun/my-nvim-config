return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim",
    "mfussenegger/nvim-dap-python",
  },
  opts = {
    -- Auto select virtualenv on startup
    auto_refresh = true,
    search = true,
    -- Search for these venv directories
    search_venv_managers = true,
    search_workspace = true,
    name = {
      "venv",
      ".venv",
      "env",
      ".env",
    },
  },
  event = "VeryLazy", -- Optional: lazy load on VeryLazy event
  branch = "regexp",
  config = function(_, opts)
    require("venv-selector").setup(opts)
    
    -- Auto-select venv when opening Python files
    vim.api.nvim_create_autocmd("FileType", {
      pattern = "python",
      callback = function()
        -- Try to retrieve cached venv or search for one
        require("venv-selector").retrieve_from_cache()
      end,
    })
  end,
  keys = {
    { "<leader>ve", "<cmd>VenvSelect<cr>", desc = "Select VirtualEnv" },
    { "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "Select Cached VirtualEnv" },
  },
}
