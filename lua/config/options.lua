-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local vim = vim

-- LSP START -----------
-- Set different python3_host_prog value based on OS
if vim.loop.os_uname().sysname == "Linux" then
  vim.g.python3_host_prog = "/home/wikineo/.pyenv/versions/neovim/bin/python"
elseif vim.loop.os_uname().sysname == "Darwin" then
  vim.g.python3_host_prog = "/Users/wangz10/.pyenv/versions/neovim/bin/python"
end
--- LSP END-----------

-- vim.opt START----------
local options = {
  spelllang = { "en", "cjk" },
  conceallevel = 0,
  guifont = "JetBrainsMono Nerd Font:h18",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
-- vim.opt END----------
--
vim.filetype.add({
  filename = {
    ["Jenkinsfile.cbci"] = "groovy",
    ["Jenkinsfile"] = "groovy",
  },
})
