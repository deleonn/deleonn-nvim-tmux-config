-- vim.keymap.set("n", "<Space>b", vim.cmd.Explore)
-- vim.g.netrw_banner = 0
vim.keymap.set("n", "<Space>b", function() -- Command to open the Netrw and highlight the current file by executing a search (won't work properly unless we hide the netrw banner)
    local filename = vim.fn.expand("%:t") -- Execute expand first to get the file opened before changing the buffer to netrw
    vim.cmd("Explore")
    vim.schedule(function()
        vim.api.nvim_feedkeys("/" .. vim.fn.escape(filename, "/\\") .. "\r", "n", true)
    end)
end, { noremap = true, silent = true })

vim.o.splitbelow = true -- vertical split to bottom
vim.o.splitright = true -- horizontal split to the right
vim.keymap.set("n", "<C-w>v", vim.cmd.vnew)
vim.keymap.set("n", "<C-w>s", vim.cmd.new)
vim.api.nvim_set_keymap('n', '<Space>r', ':lua vim.lsp.buf.rename()<CR>', { noremap = true, silent = true })

-- Move selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Append the line below to your current line without moving the cursor
vim.keymap.set("n", "J", "mzJ`z")

-- Move the screen up and down while keeping the cursor in the middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Keep search terms in the middle of the screen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste without losing your current paste 
vim.keymap.set("x", "p", "\"_dP")
vim.keymap.set("n", "<Space>d", "\"_d")
vim.keymap.set("v", "<Space>d", "\"_d")

vim.keymap.set("i", "<C-c>", "<Esc>")

vim.keymap.set("n", "Q", "<nop>")

-- Copy and paste from clipboard
vim.keymap.set("n",  "y", "\"+y")
vim.keymap.set("n",  "Y", "\"+yg_")
vim.keymap.set("n",  "y", "\"+y")
vim.keymap.set("n",  "yy",  "\"+yy")
vim.keymap.set("v",  "y", "\"+y")
vim.keymap.set("n",  "d", "\"+d")
vim.keymap.set("v",  "d", "\"+d")
vim.keymap.set("n",  "dd", "\"+dd")
vim.keymap.set("n",  "D", "\"+dg_")
vim.keymap.set("v",  "x", "\"+x")

vim.keymap.set("n", "p", "\"+p")
vim.keymap.set("n", "P", "\"+P")
vim.keymap.set("n", "p", "\"+p")
vim.keymap.set("n", "P", "\"+P")


-- Set the global variable
vim.g.tmux_navigator_no_mappings = 1

-- Key mappings
local opts = { noremap = true, silent = true }
vim.api.nvim_set_keymap('n', '<c-h>', ':TmuxNavigateLeft<CR>', opts)
vim.api.nvim_set_keymap('n', '<c-j>', ':TmuxNavigateDown<CR>', opts)
vim.api.nvim_set_keymap('n', '<c-k>', ':TmuxNavigateUp<CR>', opts)
vim.api.nvim_set_keymap('n', '<c-l>', ':TmuxNavigateRight<CR>', opts)
vim.api.nvim_set_keymap('n', '<c-\\>', ':TmuxNavigatePrevious<CR>', opts)

-- format json
vim.api.nvim_set_keymap('n', '<Space>fj', ":%!jq '.'<CR>", { noremap = true, silent = true })

-- indenting
-- vim.keymap.set('n', '<Tab>', '>>', { noremap = true, silent = true })
-- vim.keymap.set('n', '<S-Tab>', '<<', { noremap = true, silent = true })
