local setup, terminal = pcall(require, "toggleterm")
if not setup then
  print("toggleterm not found")
  return
end

terminal.setup({
  direction = "float",
})

-- lazygit
local Terminal = require('toggleterm.terminal').Terminal
local lazygit = Terminal:new({
  cmd = "lazygit",
  direction = "float",
  hidden = true,
  float_opts = {
    border = "double",
  },
  on_open = function(term)
    vim.cmd("startinsert!")
  end,
  on_close = function(term)
    vim.cmd("startinsert!")
  end,
})

return {
  lazygit_toggle = function()
    lazygit:toggle()
  end
}
