-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local vim = vim

-- Set different python3_host_prog value based on OS
if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.g.python3_host_prog = "C:\\Users\\WZY\\AppData\\Local\\Programs\\Python\\Python312\\python.exe"
else
  vim.g.python3_host_prog = "/Users/wangz10/.pyenv/versions/neovim/bin/python"
  vim.g.ruby_host_prog = "/Users/wangz10/.rbenv/versions/3.1.2/bin/neovim-ruby-host"
end

-- Enable the option to require a Prettier config file
-- If no prettier config file is found, the formatter will not be used
vim.g.lazyvim_prettier_needs_config = false

-- set vim.opt
local options = {
  spelllang = { "en", "cjk" },
  relativenumber = false,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
