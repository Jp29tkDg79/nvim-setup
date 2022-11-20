local setup, lindentblank = pcall(require, "indent_blankline")
if not setup then
  return
end
lindentblank.setup({
  show_end_of_line = true,
  space_char_blankline = " ",
})
