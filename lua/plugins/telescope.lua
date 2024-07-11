return {
  "nvim-telescope/telescope.nvim",
  opts = {
    pickers = {
      live_grep = {
        additional_args = function(opts)
          return { "--hidden" }
        end,
      },
    },
  },
}
