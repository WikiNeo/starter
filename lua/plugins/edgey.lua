return {
  {
    "folke/edgy.nvim",
    opts = function(_, opts)
      -- Set right sidebar width
      opts.options = opts.options or {}
      opts.options.right = { size = 100 }
      opts.options.left = { size = 40 }

      -- Remove aerial from right
      opts.right = vim.tbl_filter(function(view)
        return view.ft ~= "aerial"
      end, opts.right or {})

      -- Add aerial to left
      opts.left = opts.left or {}
      table.insert(opts.left, {
        title = "Aerial",
        ft = "aerial",
        pinned = true,
        open = "AerialOpen",
      })
    end,
  },
}
