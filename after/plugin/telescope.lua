local builtin = require('telescope.builtin')
local actions = require('telescope.actions')
local action_state = require('telescope.actions.state')

local open_with_horizontal_split = function(prompt_bufnr)
    local entry = action_state.get_selected_entry()
    actions.close(prompt_bufnr)
    vim.cmd('split')
    vim.cmd('edit ' .. entry.path)
end

vim.keymap.set('n', '<leader>ff', function()
  builtin.find_files({
    layout_strategy = 'horizontal',
    layout_config = { width = 0.9 },
    attach_mappings = function(_, map)
        map('i', '<C-s>', open_with_horizontal_split)
        map('n', '<C-s>', open_with_horizontal_split)

        map('i', '<C-x>', function() end)
        map('n', '<C-x>', function() end)
        return true
    end
  })
end, { noremap = true, silent = true })
vim.keymap.set('n', '<leader>fgf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fd', builtin.diagnostics, {})
vim.keymap.set('n', '<leader>fi', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>fo', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {})
vim.keymap.set("n", "<leader>fgc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
vim.keymap.set("n", "<leader>fgh", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
vim.keymap.set("n", "<leader>fgb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
vim.keymap.set("n", "<leader>fgs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

vim.keymap.set("n", '<leader>fcn', function()
        builtin.find_files { cwd = vim.fn.stdpath 'config' }
    end
)
