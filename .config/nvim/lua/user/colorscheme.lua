vim.cmd [[
try
  colorscheme gruvbox
  set background=dark
  highlight Normal guibg=none
catch /^Vim\%((\a\+)\)\=:E185/
  colorscheme default
  set background=dark
endtry
]]
