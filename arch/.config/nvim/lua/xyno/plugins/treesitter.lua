return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" }, -- Lazy load on these events
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag", -- Through help of treesitter autoclosing tag
  },
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({ -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },
      -- enable autotagging (w/ nvim-ts-autotag plugin)
      autotag = {
        enable = true,
      },
      -- ensure these language parsers are installed
      ensure_installed = {
        "json",
        "javascript",
        -- "typescript",
        -- "tsx",
        -- "yaml",
        "html",
        "css",
        -- "prisma",
        "markdown",
        "markdown_inline",
        -- "svelte",
        -- "graphql",
        "bash",
        "lua",
        "vim",
        -- "dockerfile",
        "gitignore",
        -- "query",
        "vimdoc",
        "c",
        "python",
      },
      auto_install = true,
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>", -- TODO: Use this , basically selects the block and continues selecting on pressing
          node_incremental = "<C-space>",
          scope_incremental = "<C-s>",
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
