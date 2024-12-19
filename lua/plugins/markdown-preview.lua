-- https://github.com/iamcco/markdown-preview.nvim
return {
  "iamcco/markdown-preview.nvim",
  config = function()
    -- set to 1, nvim will open the preview window after entering the Markdown buffer
    -- default: 0
    vim.g.mkdp_auto_start = 1
    -- set to 1, the nvim will auto close current preview window when changing
    -- from Markdown buffer to another buffer
    -- default: 1
    vim.g.mkdp_auto_close = 0
    -- set to 1, Vim will refresh Markdown when saving the buffer or
    -- when leaving insert mode. Default 0 is auto-refresh Markdown as you edit or
    -- move the cursor
    vim.g.mkdp_refresh_slow = 0
    vim.g.mkdp_preview_options = {
      mkit = {},
      katex = {},
      uml = {},
      disable_sync_scroll = 0,
      sync_scroll_type = "middle",
      hide_yaml_meta = 1,
      sequence_diagrams = {},
      flowchart_diagrams = {},
    }
  end,
}
