local shade_setup, shade = pcall(require, "shade")
if not shade_setup then
  return
end

shade.setup({
  overlay_opacity = 30,
  opacity_step = 2,
  keys = {
    brightness_up = "<C-Up>",
    brightness_down = "<C-Down>",
    toggle = "<Leader>s",
  },
})
