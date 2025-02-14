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
