return {
  "craftzdog/solarized-osaka.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("solarized-osaka").setup({
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
    })
    vim.cmd([[colorscheme solarized-osaka]])
  end,
}
