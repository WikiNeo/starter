return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff = {
        init_options = {
          settings = {
            configuration = function()
              if vim.loop.os_uname().sysname == "Darwin" then
                return "~/.config/nvim/config/ruff_mac.toml"
              else
                return "~/.config/nvim/config/ruff.toml"
              end
            end,
          },
        },
      },
      yamlls = {
        settings = {
          yaml = {
            editor = {
              tabSize = 4,
            },
          },
        },
      },
    },
  },
}
