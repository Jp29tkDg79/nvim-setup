local status, n = pcall(require, "nightfox")
if (not status) then return end

n.setup({
  options = {
    transparent = true,
    styles = {
      comments = "italic",
      keywords = "bold",
      types = "italic,bold",
    }
  }
})

-- customize to your favorite color
-- https://github.com/EdenEast/nightfox.nvim
vim.cmd("colorscheme carbonfox")
