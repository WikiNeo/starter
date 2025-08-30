return {
  {
    -- install the theme
    "catppuccin/nvim",
    opts = {
      flavour = "macchiato", -- latte, frappe, macchiato, mocha
      custom_highlights = function(colors)
        return {
          LineNr = { fg = colors.blue }, -- fallback
          LineNrAbove = { fg = colors.blue }, -- relative above
          LineNrBelow = { fg = colors.blue }, -- relative below
          CursorLineNr = { fg = colors.peach, bold = true }, -- current line
        }
      end,
    },
  },
  {
    -- tell LazyVim to use it
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
