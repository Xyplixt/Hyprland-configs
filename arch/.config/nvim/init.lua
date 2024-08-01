vim.g.base46_cache = vim.fn.stdpath("data") .. "/nvchad/base46/"
-- init.lua file run first thus we have to specify these files in here which need to be loaded (can evn do whole setup here)
-- Nvim automatically loads 'lua' and 'plugins' folder thus we need not to specify it here
require("xyno.core") -- To load core folder
require("xyno.lazy") -- To load lazy

local integrations = require("nvconfig").base46.integrations
for _, name in ipairs(integrations) do
  dofile(vim.g.base46_cache .. name)
end
--
require("base46").load_all_highlights() -- this compiles + loads hl
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")
