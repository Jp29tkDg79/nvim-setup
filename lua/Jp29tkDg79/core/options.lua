local list = {
  -- encodings
  encoding = 'utf-8',
  fileencoding = 'utf-8',
  -- row number
  relativenumber = true,
  number = true,
  -- tabs & indentation
  tabstop = 2,
  shiftwidth = 2,
  expandtab = true,
  autoindent = true,
  -- line wrapping
  wrap = false,
  -- serch settings
  ignorecase = true,
  smartcase = true,
  -- cursor line
  cursorline = true,
  -- appearance
  wildoptions = 'pum',
  pumblend = 5,
  termguicolors = true,
  background = "dark",
  signcolumn = "yes",
  -- backspace
  backspace = "indent,eol,start",
  -- clipboard
  clipboard = { "unnamedplus" },
  -- split windows
  splitright = true,
  splitbelow = true, iskeyword = { "-" },
  -- Finding files - Search down into subfolders
  path = { "**" },
  -- lindent blank
  list = true,
  listchars = { "space:⋅", "eol:↴" },

  -- others
  title = true,
  backup = false,
  backupskip = { '/tmp/*', '/private/tmp/*' },
  scrolloff = 10,
}

for k, v in pairs(list) do
  if type(v) == "table" then
    for _, vv in pairs(v) do vim.opt[k]:append(vv) end
  else
    vim.opt[k] = v
  end
end
