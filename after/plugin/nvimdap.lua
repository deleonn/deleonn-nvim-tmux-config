local dap = require("dap")
local widgets = require("dap.ui.widgets")
local ui = require("dapui")

vim.keymap.set('n', '<Leader>dq', function() dap.continue() end)
vim.keymap.set('n', '<Leader>dQ', function() ui.close() end)
vim.keymap.set('n', '<Leader>dW', function() ui.open() end)
vim.keymap.set('n', '<Leader>dw', function() dap.step_over() end)
vim.keymap.set('n', '<Leader>de', function() dap.step_into() end)
vim.keymap.set('n', '<Leader>dr', function() dap.step_out() end)
vim.keymap.set('n', '<Leader>db', function() dap.toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>dB', function() dap.set_breakpoint() end)
vim.keymap.set('n', '<Leader>dlp', function() dap.set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>do', function() dap.repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() dap.run_last() end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
  widgets.hover()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
  widgets.preview()
end)
vim.keymap.set('n', '<Leader>df', function()
  widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
  widgets.centered_float(widgets.scopes)
end)
vim.keymap.set('n', '<Leader>d?', function() 
    require('dapui').eval(nil, { enter = true })
end)

dap.listeners.before.attach.dapui_config = function()
    ui.open()
end

dap.listeners.before.launch.dapui_config = function()
    ui.open()
end

-- dap.listeners.before.event_terminated.dapui_config = function()
--     ui.close()
-- end

-- dap.listeners.before.event_exited.dapui_config = function()
--     ui.close()
-- end
