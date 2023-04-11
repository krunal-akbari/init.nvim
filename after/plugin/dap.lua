local dapui = require("dapui")
local dap = require("dap")


dapui.setup()

vim.keymap.set("n", "<leader>d", function() dapui.toggle() end, {})
vim.keymap.set("n", "<leader>b", function() dap.toggle_breakpoint() end , {})


