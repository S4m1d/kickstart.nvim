local configurator = {}

function configurator.configure_cpp()
  local dap = require 'dap'
  local masonRegistry = require 'mason-registry'
  local codelldb = masonRegistry.get_package 'codelldb'

  dap.adapters.codelldb = {
    type = 'server',
    port = '${port}',
    executable = {
      command = codelldb:get_install_path() .. '/codelldb',
      args = { '--port', '${port}' },
    },
  }

  dap.configurations.cpp = {
    {
      name = 'Launch file',
      type = 'codelldb',
      request = 'launch',
      program = function()
        return vim.fn.input('Path to executable: ' .. vim.fn.getcwd() .. '/')
      end,
      cwd = '${workspaceFolder}',
      stopOnEntry = false,
    },
  }
end

return configurator
