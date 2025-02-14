return {
  "vinnymeller/swagger-preview.nvim",
  cmd = { "SwaggerPreview", "SwaggerPreviewStop", "SwaggerPreviewToggle" },
  -- build is executed when a plugin is installed or updated.
  build = "npm i",
  config = function()
    require("swagger-preview").setup({
      port = 8001,
    })
  end,
}
