return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ruff_lsp = {
        enabled = true,
        init_options = {
          settings = {
            format = {
              args = { "--config=~/.config/ruff.toml" },
            },
          },
        },
      },
    },
  },
}
