-- highlight indent line
return {
  "shellRaining/hlchunk.nvim",
  enabled = true,
  event = {
    "BufReadPre",
    "BufNewFile",
  },
  opts = {
    indent = { enable = false, use_treesitter = true },
    chunk = {
      enable = true,
      notify = false,
      chars = { right_arrow = "─" },
    },
    line_num = {
      enable = false,
      use_treesitter = true,
    },
  },
}
