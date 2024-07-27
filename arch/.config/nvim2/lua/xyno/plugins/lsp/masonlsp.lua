return {
  "williamboman/mason-lspconfig.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("mason-lspconfig").setup({
      ensure_installed = { "lua_ls", "clangd", "pylsp", "tsserver", "cssls", "marksman" },
      automatic_installation = true,
    })
  end,
}
