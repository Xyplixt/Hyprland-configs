return {
  {
    "Exafunction/codeium.nvim",
    opts = {
      enable_chat = true,
    },
  },
  {
    "supermaven-inc/supermaven-nvim",
    -- commit = "df3ecf7",
    event = "InsertEnter",
    opts = {
      disable_keymaps = false,
      disable_inline_completion = false,
      keymaps = {
        accept_suggestion = "<C-;>",
        clear_suggestion = "<Nop>",
        accept_word = "<C-y>",
      },
    },
  },
}
