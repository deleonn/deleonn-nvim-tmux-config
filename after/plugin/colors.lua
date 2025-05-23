function ColorMyPencils(color)
	color = color or "github_dark_high_contrast"
	vim.cmd.colorscheme(color)

	-- vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none", fg = "none" })
	-- vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none", fg = "none" })
	vim.api.nvim_set_hl(0, "Normal", { bg = "none", fg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none", fg = "none" })
	vim.api.nvim_set_hl(0, "NormalSB", { bg = "none", fg = "none" })
	vim.api.nvim_set_hl(0, "NormalNC", { bg = "none", fg = "none" })
	-- vim.api.nvim_set_hl(0, "FloatBorder", { bg = "none", fg = "none" })
	-- vim.api.nvim_set_hl(0, "FloatShadow", { bg = "none", fg = "none" })
	-- vim.api.nvim_set_hl(0, "FloatShadowThrough", { bg = "none", fg = "none" })
end

-- ColorMyPencils()

-- Load packer and other plugin
require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    -- All your other plugins here...
    use('projekt0n/github-nvim-theme')
end)

-- Set the colorscheme after all plugins are loaded
vim.cmd([[colorscheme github_dark_high_contrast]])
