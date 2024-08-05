return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff = {
        init_options = {
          settings = {
            format = {
              args = { "--config=~/.config/nvim/config/ruff.toml" },
            },
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
