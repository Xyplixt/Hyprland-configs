return {
  {
    "craftzdog/solarized-osaka.nvim",
    priority = 1000,
    opts = function()
      return {
        transparent = true,
      }
    end,
    config = function() -- Runs whenever the plugin loads
      vim.cmd([[colorscheme solarized-osaka]])
    end,
  },
}
