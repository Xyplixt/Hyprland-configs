local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim" -- Installing lazy (written in it's document)
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({ -- loading lazy and setting it up
  defaults = { lazy = true },
  { import = "xyno.plugins" }, -- Adding plugins to lazy
  { import = "xyno.plugins.lsp" }, -- Adding lsp folder to lazy
}, {
  checker = {
    enabled = true, -- Check for updates
    notify = false, -- Don't notify about updates
  },
  install = {
    missing = true,
    colorscheme = { "nvchad" },
  },
  change_detection = {
    notify = false, -- Don't notify about changes
  },
  ui = {
    size = { width = 0.6, height = 0.7 },
    border = "rounded",
  },
})
