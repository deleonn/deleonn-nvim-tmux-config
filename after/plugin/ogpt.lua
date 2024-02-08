local ogpt = require("ogpt")

ogpt.setup({
    default_provider = 'ollama',
    providers = {
        ollama = {
            api_host = 'http://0.0.0.0:11434',
            model = "mixtral:latest",
        }
    },
})

vim.keymap.set("n", "<leader>aa", "<cmd>OGPT<CR>")
vim.keymap.set("n", "<leader>ae", "<cmd>OGPTRun edit_with_instructions<CR>")
vim.keymap.set("n", "<leader>ac", "<cmd>OGPTRun edit_code_with_instructions<CR>")

vim.keymap.set("v", "<leader>aa", "<cmd>OGPT<CR>")
vim.keymap.set("v", "<leader>ae", "<cmd>OGPTRun edit_with_instructions<CR>")
vim.keymap.set("v", "<leader>ac", "<cmd>OGPTRun edit_code_with_instructions<CR>")
