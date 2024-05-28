-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local vim = vim

-- Set different python3_host_prog value based on OS
if vim.loop.os_uname().sysname == "Windows_NT" then
  vim.g.python3_host_prog = "C:\\Users\\WZY\\.pyenv-win-venv\\envs\\neovim\\Scripts\\python.exe"
else
  vim.g.python3_host_prog = "/Users/wangz10/.pyenv/versions/neovim/bin/python"
end

-- set vim.opt
local options = {
  spelllang = { "en", "cjk" },
  -- autochdir = true,
  --wrap = true,
  -- textwidth = 80,
  -- formatoptions = "jcroqlnt",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
