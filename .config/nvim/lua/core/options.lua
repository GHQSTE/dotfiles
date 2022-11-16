local o = vim.opt
local g = vim.g

-- disable nvim intro
o.shortmess:append 'sI'

-- numbers
o.number = true
o.relativenumber = true
o.numberwidth = 2
o.ruler = false

-- indenting
o.expandtab = true
o.smartindent = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2

-- backup
o.backup = false
o.writebackup = false
o.swapfile = false
o.undofile = true

o.laststatus = 3 -- global statusline
o.showmode = false

o.title = true
o.clipboard = 'unnamedplus'
o.cursorline = true
o.cursorcolumn = true
o.termguicolors = true

-- Number of screen lines to keep above and below the cursor
o.scrolloff = 8

o.signcolumn = 'yes'
o.colorcolumn = '80'

o.splitbelow = true
o.splitright = true

o.fillchars = { eob = ' ' }
o.mouse = 'a'

o.timeoutlen = 400

-- interval for writing swap file to disk, also used by gitsigns
o.updatetime = 250

-- go to previous/next line with h,l,left arrow and right arrow
-- when cursor reaches end/beginning of line
o.whichwrap:append '<>[]hl'

-- disable some builtin vim plugins
local default_plugins = {
  '2html_plugin',
  'getscript',
  'getscriptPlugin',
  'gzip',
  'logipat',
  'netrw',
  'netrwPlugin',
  'netrwSettings',
  'netrwFileHandlers',
  'matchit',
  'tar',
  'tarPlugin',
  'rrhelper',
  'spellfile_plugin',
  'vimball',
  'vimballPlugin',
  'zip',
  'zipPlugin',
  'tutor',
  'rplugin',
  'syntax',
  'synmenu',
  'optwin',
  'compiler',
  'bugreport',
  'ftplugin',
}

for _, plugin in pairs(default_plugins) do
  g['loaded_' .. plugin] = 1
end

local default_providers = {
  'node',
  'perl',
  'python3',
  'ruby',
}

for _, provider in ipairs(default_providers) do
  vim.g['loaded_' .. provider .. '_provider'] = 0
end
