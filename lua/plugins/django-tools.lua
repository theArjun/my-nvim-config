return {
  "nvim-neotest/neotest-python",
  dependencies = {
    "nvim-neotest/neotest",
    "nvim-lua/plenary.nvim",
  },
  ft = { "python" },
  config = function()
    require("neotest").setup({
      adapters = {
        require("neotest-python")({
          -- Extra arguments for pytest
          args = {"--no-header", "--no-summary", "-v"},
          -- Runner to use (pytest, django, unittest)
          runner = "pytest",
          -- Custom python path for the tests
          python = function()
            -- Check for virtual environment
            local venv_path = vim.fn.getcwd() .. "/.venv/bin/python"
            if vim.fn.filereadable(venv_path) == 1 then
              return venv_path
            end
            return vim.fn.exepath("python")
          end,
          -- Auto detect django projects
          django = function()
            -- Check for manage.py in the project root
            if vim.fn.filereadable(vim.fn.getcwd() .. "/manage.py") == 1 then
              return true
            end
            return false
          end,
        }),
      },
    })

    -- Add Django detection and setup
    local function is_django_project()
      -- Check common Django project identifiers
      local manage_py = vim.fn.filereadable(vim.fn.getcwd() .. "/manage.py")
      local settings_py = vim.fn.filereadable(vim.fn.getcwd() .. "/settings.py")
      local wsgi_py = vim.fn.filereadable(vim.fn.getcwd() .. "/wsgi.py")
      
      return manage_py == 1 or settings_py == 1 or wsgi_py == 1
    end
    
    -- Set up Django project-specific configuration
    if is_django_project() then
      -- Configure DAP settings for Django
      local dap = require('dap')
      
      -- Ensure settings are established
      if not dap.configurations.python then
        dap.configurations.python = {}
      end
      
      -- Add Django runserver configuration if it doesn't exist
      local has_django_config = false
      for _, config in ipairs(dap.configurations.python) do
        if config.name == "Django" then
          has_django_config = true
          break
        end
      end
      
      if not has_django_config then
        table.insert(dap.configurations.python, {
          type = "python",
          request = "launch",
          name = "Django",
          program = "${workspaceFolder}/manage.py",
          args = {"runserver", "--noreload"},
          django = true,
          justMyCode = false,
        })
      end
      
      -- Set up keymappings for Django debug
      vim.keymap.set("n", "<leader>djs", function()
        require('dap').run(dap.configurations.python[#dap.configurations.python])
      end, { desc = "Debug Django Server" })
    end
    
    -- Set up keymaps for neotest
    vim.keymap.set("n", "<leader>tt", function() require("neotest").run.run() end, { desc = "Test Nearest" })
    vim.keymap.set("n", "<leader>tf", function() require("neotest").run.run(vim.fn.expand("%")) end, { desc = "Test File" })
    vim.keymap.set("n", "<leader>ts", function() require("neotest").summary.toggle() end, { desc = "Test Summary" })
    vim.keymap.set("n", "<leader>to", function() require("neotest").output.open() end, { desc = "Test Output" })
  end,
}
