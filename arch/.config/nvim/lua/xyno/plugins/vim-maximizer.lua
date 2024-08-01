-- Toggle Maximixe in split pane
return {
  "szw/vim-maximizer",
  keys = { -- Lazy load this plugin when this key is pressed
    { "<leader>sm", "<cmd>MaximizerToggle<CR>", desc = "Maximize/minimize a split" },
  },
}
