return {
  {
    "echasnovski/mini.bufremove",
    keys = {
      { "<leader>BD", "<cmd>lua MiniBufremove.delete()<cr>", mode = "n", desc = "Delete Buffer" },
      { "<leader>BW", "<cmd>lua MiniBufremove.wipeout()<cr>", mode = "n", desc = "Wipeout Buffer" },
    },
    opts = {},
  },
  {
    "echasnovski/mini.clue",
    event = { "BufReadPre", "BufNewFile" },
    opts = function()
      local clue = require("mini.clue")
      local function gen_leaders()
        return {
          { mode = "n", keys = "<Leader>c", desc = "+Code" },
          { mode = "n", keys = "<Leader>f", desc = "+Find" },
          { mode = "n", keys = "<Leader>h", desc = "+Harpoon" },
          { mode = "n", keys = "<Leader>l", desc = "+LazyGit" },
          { mode = "n", keys = "<Leader>s", desc = "+Split" },
          { mode = "n", keys = "<Leader>t", desc = "+Tabs" },
          { mode = "n", keys = "<Leader>w", desc = "+Session" },
          { mode = "n", keys = "<Leader>x", desc = "+Trouble" },
          { mode = "n", keys = "<Leader>u", desc = "+Notifications" },
          { mode = "n", keys = "<Leader>B", desc = "+Buffers" },
          { mode = "n", keys = "<Leader>b", desc = "+Brainly" },
          { mode = "n", keys = "<Leader>r", desc = "+LSP/Smart-Rename" },
          { mode = "n", keys = "<Leader>d", desc = "Diagnostics" },
          { mode = "n", keys = "<Leader>o", desc = "Obsidian" },
          -- { mode = "n", keys = "<Leader>dl", postkeys = "<Leader>d" },
        }
      end
      return {
        triggers = {
          { mode = "n", keys = "<Leader>" }, -- Leader triggers
        },
        clues = {
          clue.gen_clues.g(),
          clue.gen_clues.marks(),
          clue.gen_clues.registers(),
          clue.gen_clues.windows({
            submode_move = true,
            submode_navigate = true,
            submode_resize = true,
          }),
          clue.gen_clues.z(),
          gen_leaders(),
        },
      }
    end,
  },
}
