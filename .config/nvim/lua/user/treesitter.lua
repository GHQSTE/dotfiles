local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup {
  -- A list of parser names, or "all"
  ensure_installed = { "bash", "c", "lua", "vim", "html", "css", "latex" },
  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,
  ignore_install = { "" }, -- List of parsers to ignore installing (for "all")
  highlight = {
    enable = true, -- false will disable the whole extension
    disable = { "" }, -- list of language that will be disabled
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true, disable = { "" } },
  context_commentstring = {
    enable = true
  },
}

