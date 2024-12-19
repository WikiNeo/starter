-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local vim = vim

-- LSP START -----------
-- Set different python3_host_prog value based on OS
if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.g.python3_host_prog = "C:\\Users\\WZY\\AppData\\Local\\Programs\\Python\\Python312\\python.exe"
elseif vim.loop.os_uname().sysname == "Linux" then
  vim.g.python3_host_prog = "/home/wikineo/.pyenv/versions/neovim/bin/python"
  vim.g.ruby_host_prog = "/home/wikineo/.rbenv/versions/3.3.4/bin/neovim-ruby-host"
elseif vim.loop.os_uname().sysname == "Darwin" then
  vim.g.python3_host_prog = "/Users/wangz10/.pyenv/versions/neovim/bin/python"
  vim.g.ruby_host_prog = "/Users/wangz10/.rbenv/versions/3.1.2/bin/neovim-ruby-host"
end
-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
vim.g.lazyvim_python_ruff = "ruff"
--- LSP END-----------

-- Prettier START---------
-- Enable the option to require a Prettier config file
-- If no prettier config file is found, the formatter will not be used
vim.g.lazyvim_prettier_needs_config = false
-- Prettier END---------

-- vim.opt START----------
local options = {
  spelllang = { "en", "cjk" },
  relativenumber = false,
  conceallevel = 0,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
-- vim.opt END----------
