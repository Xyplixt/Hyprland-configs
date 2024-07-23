return {
  "folke/which-key.nvim",
  event = "VeryLazy", -- Use to tell lazy its not important and can be loaded are loading ui
  init = function() -- init tells what to run at neovim startup ( config was used to run when plugin loads )
    vim.o.timeout = true
    vim.o.timeoutlen = 500 -- Specify how long whichkey will wait before load
  end,
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
}
