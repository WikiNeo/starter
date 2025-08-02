return {
  "vinnymeller/swagger-preview.nvim",
  cmd = { "SwaggerPreview", "SwaggerPreviewStop", "SwaggerPreviewToggle" },
  -- fun(LazyPlugin) or string or false or a list of build commands
  --
  -- build is executed when a plugin is installed or updated.
  build = "npm i",
  config = function()
    require("swagger-preview").setup({
      port = 8001,
    })
  end,
}

-- Usage
--
-- Comes with 3 commands, intended to be run from the buffer containing your Swagger file.
--     :SwaggerPreview - starts a new preview, killing any preexisting server
--     :SwaggerPreviewStop - stops the current server
--     :SwaggerPreviewToggle - turns preview on if it was off, kills it if it was on
