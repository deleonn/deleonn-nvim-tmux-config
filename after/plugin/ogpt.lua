local ogpt = require("ogpt")

ogpt.setup({
    default_provider = 'ollama',
    providers = {
        ollama = {
            api_host = 'http://0.0.0.0:11434',
            -- model = "mixtral:latest",
            model = "codellama:latest",
        }
    },
})

vim.keymap.set("n", "<leader>og", "<cmd>OGPT<CR>")
vim.keymap.set("n", "<leader>oe", "<cmd>OGPTRun edit_with_instructions<CR>")
vim.keymap.set("n", "<leader>oc", "<cmd>OGPTRun edit_code_with_instructions<CR>")

