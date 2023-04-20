local dapui = require("dapui")
local dap = require("dap")
dapui.setup()

dap.adapters.python = {
    type = 'executable',
    command = 'python',
    args = { '-m', 'debugpy.adapter' },
}
dap.configurations.python = {
    {
        type = 'python',
        request = 'launch',
        name = "Launch file",
        program = "${file}",
        pythonPath = function()
            local cwd = vim.fn.getcwd()
            local pyenv = cwd .. '/.venv/bin/python'
            if vim.fn.executable(pyenv) == 1 then
                return pyenv
            else
                return '/usr/bin/python'
            end
        end,
    },
}


dap.adapters.lldb = {
    type = 'executable',
    command = '/usr/bin/lldb-vscode',
    name = "lldb"
}
dap.configurations.cpp = {
    {
        name = "Launch",
        type = "lldb",
        request = "launch",
        program = function()
            return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
        args = {},
        runInTerminal = false,
    },
}

dap.configurations.c = dap.configurations.cpp

vim.keymap.set("n", "<leader>d", function() dapui.toggle() end, {})
vim.keymap.set("n", "<leader>b", function() dap.toggle_breakpoint() end, {})
vim.keymap.set("n", "<leader>dc", function() dap.contune() end, {})
