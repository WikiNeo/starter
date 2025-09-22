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
      gopls = {
        root_dir = function(arg)
          local util = require("lspconfig.util")

          -- Accept either bufnr or filename
          local fname = arg
          if type(arg) == "number" then
            fname = vim.api.nvim_buf_get_name(arg)
          end
          if fname == nil or fname == "" then
            -- fallback to current file / cwd to avoid nil passing
            fname = vim.api.nvim_buf_get_name(0)
            if fname == nil or fname == "" then
              fname = vim.loop.cwd()
            end
          end

          -- Prefer Git repo root; then go.work; then go.mod; then .git; then file dir
          return vim.fs.dirname(vim.fs.find(".git", { path = fname, upward = true })[1])
            or util.root_pattern("go.work")(fname)
            or util.root_pattern("go.mod")(fname)
            or util.root_pattern(".git")(fname)
            or vim.fs.dirname(fname)
        end,
      },
    },
  },
}
