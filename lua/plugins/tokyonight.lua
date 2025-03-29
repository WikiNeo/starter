return {
  "folke/tokyonight.nvim",
  -- opts should be
  --  a table (will be merged with parent specs),
  --  return a table (replaces parent specs)
  --  or should change a table.
  -- The table will be passed to the Plugin.config() function.
  -- Setting this value will imply Plugin.config()
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
