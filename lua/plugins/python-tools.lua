return {
  {
    "linux-cultist/venv-selector.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "nvim-telescope/telescope.nvim",
      "mfussenegger/nvim-dap-python",
    },
    opts = {
      name = {
        "venv",
        ".venv",
        "env",
        ".env",
      },
      auto_refresh = true,
    },
    event = "VeryLazy",
    keys = {
      { "<leader>vs", "<cmd>VenvSelect<cr>", desc = "Select Virtualenv" },
      { "<leader>vc", "<cmd>VenvSelectCached<cr>", desc = "Select Cached Virtualenv" },
    },
    config = function(_, opts)
      require("venv-selector").setup(opts)
      
      -- Auto-detect Django project and set up debugging
      vim.api.nvim_create_autocmd("BufReadPost", {
        pattern = {"manage.py"},
        callback = function()
          -- If manage.py is detected, we're in a Django project
          vim.notify("Django project detected", vim.log.levels.INFO)
          
          -- You could set project-specific settings here
          -- Examples:
          -- vim.b.python_project_type = "django"
          -- vim.g.python_project_root = vim.fn.getcwd()
        end
      })
    end
  },
}
