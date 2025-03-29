return {
  "mfussenegger/nvim-dap-python",
  ft = { "python" },
  dependencies = {
    "mfussenegger/nvim-dap",
    "rcarriga/nvim-dap-ui",
  },
  config = function()
    local path = require("mason-registry").get_package("debugpy"):get_install_path()
    require("dap-python").setup(path .. "/.venv/bin/python")
    
    -- Add configurations for Django
    table.insert(require("dap").configurations.python, {
      type = "python",
      request = "launch",
      name = "Django",
      program = "${workspaceFolder}/manage.py",
      args = { "runserver", "--noreload" },
      justMyCode = false,
      django = true,
      console = "integratedTerminal",
    })
    
    -- Add configuration for Django tests
    table.insert(require("dap").configurations.python, {
      type = "python",
      request = "launch",
      name = "Django Test",
      program = "${workspaceFolder}/manage.py",
      args = function()
        local args = {"test"}
        -- Ask for test path
        local test_path = vim.fn.input("Test path (app.tests.test_module): ")
        if test_path ~= "" then
          table.insert(args, test_path)
        end
        return args
      end,
      justMyCode = false,
      django = true,
      console = "integratedTerminal",
    })
    
    -- Python test method/function
    table.insert(require("dap").configurations.python, {
      type = "python",
      request = "launch",
      name = "Python: Current File (Integrated Terminal)",
      program = "${file}",
      console = "integratedTerminal",
    })
    
    -- Python remote debugging
    table.insert(require("dap").configurations.python, {
      type = "python",
      request = "attach",
      name = "Python: Remote Attach",
      connect = function()
        local host = vim.fn.input("Host [127.0.0.1]: ")
        host = host ~= "" and host or "127.0.0.1"
        local port = tonumber(vim.fn.input("Port [5678]: ")) or 5678
        return { host = host, port = port }
      end,
    })
    
    -- Additional key mappings for Python debugging
    vim.keymap.set("n", "<leader>dpr", function() require("dap-python").test_method() end, { desc = "Debug Python Method/Function" })
    vim.keymap.set("n", "<leader>dpc", function() require("dap-python").test_class() end, { desc = "Debug Python Class" })
    vim.keymap.set("n", "<leader>dps", function()
      require("dap-python").debug_selection()
    end, { desc = "Debug Python Selection" })
    
    -- Add virtual text for variables
    require("nvim-dap-virtual-text").setup({
      enabled = true,
      enabled_commands = true,
      highlight_changed_variables = true,
      highlight_new_as_changed = true,
      commented = false,
      show_stop_reason = true,
      virt_text_pos = "eol",
    })
    
    -- Auto-open DAP UI when debug session starts
    local dapui = require("dapui")
    local dap = require("dap")
    
    dap.listeners.after.event_initialized["dapui_config"] = function()
      dapui.open({})
    end
  end,
}
