return {
  "rmagatti/auto-session",

  -- Use `keys` to lazy load the plugin only when the specific keybindings are pressed
  keys = {
    { "<leader>wr", "<cmd>SessionRestore<CR>", desc = "Restore session for cwd" },
    { "<leader>ws", "<cmd>SessionSave<CR>", desc = "Save session for auto session root dir" },
  },

  -- Configuration function that will be called once the plugin is loaded
  config = function()
    local auto_session = require("auto-session")

    auto_session.setup({
      auto_restore_enabled = false, -- True if you want to auto save sessions
      auto_session_suppress_dirs = { "~/", "~/Dev/", "~/Downloads", "~/Documents", "~/Desktop/" },
    })
  end,
}
