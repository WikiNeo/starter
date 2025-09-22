return {
  "ahmedkhalf/project.nvim",
  -- fun(LazyPlugin, opts:table) or true
  --
  -- config is executed when the plugin loads.
  -- The default implementation will automatically run require(MAIN).setup(opts) if opts or config = true is set.
  -- Lazy uses several heuristics to determine the plugin's MAIN module automatically based on the plugin's name.
  -- (opts is the recommended way to configure plugins).
  config = function()
    require("project_nvim").setup({
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
      manual_mode = true,
      show_hidden = true,
    })
  end,
}
