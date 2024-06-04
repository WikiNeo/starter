return {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      on_highlights = function(hl, colors)
        hl.LineNr = {
          -- fg = "#fffb7b",
          fg = "#b2b8cf",
        }
        hl.CursorLineNr = {
          fg = colors.orange,
        }
      end,
    })
  end,
}
