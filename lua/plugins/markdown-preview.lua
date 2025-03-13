return {
  "iamcco/markdown-preview.nvim",
  config = function()
    vim.cmd([[do FileType]])
    vim.g.mkdp_auto_close = 0
  end,
}
