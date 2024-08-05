return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff = {
        init_options = {
          settings = {
            configuration = "~/.config/nvim/config/ruff.toml",
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
