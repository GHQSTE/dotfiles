local options = {
  backup = false,                          -- creates a backup file
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  undofile = true,                         -- enable persistent undo
  swapfile = false,                        -- creates a swapfile
  updatetime = 50,
  timeoutlen = 500,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  fileencoding = "utf-8",                  -- the encoding written to a file
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  termguicolors = true,
  mouse = "a",                             -- allow the mouse to be used in neovim
  list = true,
  hidden = true,
  conceallevel = 0,                        -- so that `` is visible in markdown files
  showmode = false,                        -- we don't need to see things like -- INSERT -- anymore
  cmdheight = 2,                           -- more space in the neovim command line for displaying messages
  pumheight = 10,                          -- pop up menu height
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  wildmenu = true,
  showtabline = 2,                         -- always show tabs
  cursorline = true,                       -- highlight the current line
  incsearch = true,
  hlsearch = true,                         -- highlight all matches on previous search pattern
  smartcase = false,
  ignorecase = true,                       -- ignore case in search patterns
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 2,                          -- the number of spaces inserted for each indentation
  tabstop = 2,                             -- insert 2 spaces for a tab
  softtabstop = 2,
  number = true,                           -- set numbered lines
  relativenumber = true,                   -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 4 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  colorcolumn = "80",
  scrolloff = 8,
  -- sidescrolloff = 8,
  wrap = true,                             -- display lines as one long line
  lazyredraw = false,
}

vim.opt.shortmess:append "c"

for k, v in pairs(options) do
  vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
vim.cmd [[set formatoptions-=cro]] -- TODO: this doesn't seem to work
