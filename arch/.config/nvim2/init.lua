-- init.lua file run first thus we have to specify these files in here which need to be loaded (can evn do whole setup here)
-- Nvim automatically loads 'lua' and 'plugins' folder thus we need not to specify it here
require("xyno.core") -- To load core folder
require("xyno.lazy") -- To load lazy
