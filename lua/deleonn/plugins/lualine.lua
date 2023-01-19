-- import lualine plugin safely
local status, lualine = pcall(require, "lualine")
if not status then
  return
end

lualine.setup({
  options = {
    theme = "auto",
    icons_enabled = true,
    section_separators = "",
    component_separators = "",
    always_divide_middle = true,
  },
  tabline = {
    lualine_a = {
      {
        "filename",
        path = 1,
      },
    },
    lualine_b = { "" },
    lualine_c = { "" },
    lualine_x = { "", "", "" },
    lualine_y = { "" },
    lualine_z = {
      {
        "tabs",
        mode = 1,
      },
    },
  },
  sections = {
    lualine_a = { "mode" },
    lualine_b = { "branch", "diff", "" },
    lualine_c = { "" },
    lualine_x = { "", "fileformat", "filetype" },
    lualine_y = { "diagnostics" },
    lualine_z = { "" },
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {},
  },
})
