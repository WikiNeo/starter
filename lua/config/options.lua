-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local vim = vim

if vim.fn.has("macunix") then
  vim.g.python3_host_prog = "/Users/wangz10/.pyenv/versions/neovim/bin/python"
else
end

local options = {
  autochdir = true,
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
