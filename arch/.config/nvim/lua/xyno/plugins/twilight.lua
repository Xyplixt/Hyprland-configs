return {
  "folke/twilight.nvim",
  keys = {

    { "tw", ":Twilight<CR>", desc = "Toggle Twilight" },
  },
  config = function()
    require("twilight").setup({

      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      },
    })
  end,
}
