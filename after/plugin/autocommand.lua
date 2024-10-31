vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking text',
    group = vim.api.nvim_create_augroup('deleonn-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})

--- Function to move cursor to the file in netrw
local function move_cursor_to_file_in_netrw()
  -- Get the full path of the current file
  local current_file = vim.fn.expand('%:p')
  
  -- Check if the file explorer is open
  if vim.bo.filetype == 'netrw' then
    -- Wait a bit to let netrw load
    vim.defer_fn(function()
      -- Move the cursor to the current file in netrw
      vim.cmd('normal! \\<C-^>')  -- Go to the previous buffer
      vim.cmd('normal! \\<CR>')   -- Open the file in netrw
    end, 50)
  end
end

vim.api.nvim_create_autocmd('BufEnter', {
    pattern = '*',
    callback = function()
        if vim.bo.filetype == 'netrw' then
            move_cursor_to_file_in_netrw()
        end
    end,
})
