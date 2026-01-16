return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff = {
        init_options = {
          settings = {
            configuration = "~/.config/nvim/config/ruff/ruff.toml",
          },
        },
      },
      yamlls = {
        settings = {
          yaml = {
            format = {
              -- singleQuote = true,
            },
            editor = {
              tabSize = 4,
            },
          },
        },
      },
      jsonnet_ls = {
        settings = {
          formatting = {
            Indent = 4,
          },
        },
      },
    },
  },
}
