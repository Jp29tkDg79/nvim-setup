local status, telescope = pcall(require, "telescope")
if (not status) then return end
local actions = require('telescope.actions')
local builtin = require("telescope.builtin")

local function telescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local fb_actions = require "telescope".extensions.file_browser.actions

telescope.setup {
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  },
  extensions = {
    file_browser = {
      theme = "dropdown",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        -- your custom insert mode mappings
        ["i"] = {
          ["<C-w>"] = function() vim.cmd('normal vbd') end,
        },
        ["n"] = {
          -- your custom normal mode mappings
          ["N"] = fb_actions.create,
          ["h"] = fb_actions.goto_parent_dir,
          ["/"] = function()
            vim.cmd('startinsert')
          end
        },
      },
    },
  },
}

telescope.load_extension("file_browser")

local t = {}
t.find_files = function()
  builtin.find_files({
    no_ignore = false,
    hidden = true,
  })
end
t.live_grep = function()
  builtin.live_grep()
end
t.grep_string = function()
  builtin.grep_string()
end
t.buffers = function()
  builtin.buffers()
end
t.help_tags = function()
  builtin.help_tags()
end
t.diagnostics = function()
  builtin.diagnostics()
end
t.git_commits = function()
  builtin.git_commits()
end
t.git_bcommits = function()
  builtin.git_bcommits()
end
t.git_branches = function()
  builtin.git_branches()
end
t.git_status = function()
  builtin.git_status()
end
t.file_browser = function()
  telescope.extensions.file_browser.file_browser({
    path = "%:p:h",
    cwd = telescope_buffer_dir(),
    respect_gitignore = false,
    hidden = true,
    grouped = true,
    previewer = false,
    initial_mode = "normal",
    layout_config = { height = 40 }
  })
end

return t
