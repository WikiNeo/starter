return {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      on_colors = function(colors)
        colors.fg_gutter = "#b2b8cf"
      end,
    })
  end,
}
