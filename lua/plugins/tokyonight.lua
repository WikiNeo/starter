return {
  "folke/tokyonight.nvim",
  opts = {
    style = "moon",
    on_highlights = function(hl, colors)
      -- change line number color
      hl.LineNr = {
        fg = "#b2b8cf",
      }
      -- change current line numebr color
      hl.CursorLineNr = {
        fg = colors.orange,
      }
    end,
  },
}
