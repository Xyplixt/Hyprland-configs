return {
  "OXY2DEV/markview.nvim",
  ft = "markdown",
  -- ft = "markdown" -- If you decide to lazy-load anyway
  dependencies = {
    -- You will not need this if you installed the
    -- parsers manually
    -- Or if the parsers are in your $RUNTIMEPATH
    "nvim-treesitter/nvim-treesitter",

    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("markview").setup({
      hybrid_modes = { "n" },
    })
  end,
}
