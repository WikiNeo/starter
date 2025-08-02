return {
  "folke/tokyonight.nvim",

  opts = {
    style = "moon",
    on_highlights = function(highlights, colors)
      highlights.LineNr = { fg = "#7aa2f7" } -- fallback
      highlights.LineNrAbove = { fg = "#7aa2f7" } -- relative above
      highlights.LineNrBelow = { fg = "#7aa2f7" } -- relative below
      highlights.CursorLineNr = { fg = "#ff9e64", bold = true } -- current line
    end,
  },
}
