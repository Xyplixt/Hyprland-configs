vim.cmd("let g:netrw_liststyle = 3") -- Make nvim default file explorer as tree
vim.g.lazygit_config = true
local opt = vim.opt -- For concise commands
local prefix = vim.env.XDG_CONFIG_HOME or vim.fn.expand("~/.config")
opt.undodir = { prefix .. "/nvim2/.undo//" } -- Defining folder for undotree to work properly
opt.incsearch = true
opt.relativenumber = true -- Turn on relativenumber
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.cursorline = true -- Highlight current cursor line
opt.termguicolors = true
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift
opt.clipboard:append("unnamedplus") -- use system clipboard as default register
opt.swapfile = false -- used to store changes made to a file temporarily in case of a crash
opt.encoding = "utf-8" -- Set default encoding to UTF-8
opt.fileencoding = "utf-8" -- Set file encoding to UTF-8
opt.number = true -- Show line numbers
opt.title = true -- Set the terminal's title
opt.autoindent = true -- Copy indent from the current line when starting a new line
opt.smartindent = true -- Smart indentation based on syntax
opt.hlsearch = true -- Highlight search results
opt.backup = false -- Disable backup files
opt.showcmd = true -- Show command in the last line of the screen
opt.cmdheight = 1 -- Set command line height to 1
opt.laststatus = 2 -- Always show the status line
opt.expandtab = true -- Convert tabs to spaces
opt.scrolloff = 10 -- Keep 10 lines visible above and below the cursor
opt.backupskip = { "/tmp/*", "/private/tmp/*" } -- Don't create backup files for these paths
opt.inccommand = "split" -- Show live preview of substitutions in a split window
opt.ignorecase = true -- Case insensitive searching unless /C or capital in search
opt.smarttab = true -- Insert tabs based on shiftwidth and start of line context
opt.breakindent = true -- Wrap lines with the same indent as the start of the line
opt.shiftwidth = 2 -- Number of spaces for each indentation level
opt.tabstop = 2 -- Number of spaces that a tab counts for
opt.wrap = true -- Wrap lines
opt.backspace = { "start", "eol", "indent" } -- Allow backspace over everything in insert mode
opt.path:append({ "**" }) -- Search down into subfolders
opt.wildignore:append({ "*/node_modules/*" }) -- Ignore node_modules folder in file searches
opt.splitbelow = true -- Horizontal splits open below current window
opt.splitright = true -- Vertical splits open to the right of current window
opt.splitkeep = "cursor" -- Keep cursor position when splitting windows
opt.mouse = "" -- Disable mouse support
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.undofile = true
opt.undolevels = 10000
-- Undercurl
vim.cmd([[let &t_Cs = "\e[4:3m"]]) -- Enable undercurl for terminals that support it
vim.cmd([[let &t_Ce = "\e[4:0m"]]) -- Disable undercurl for terminals that support it

-- Add asterisks in block comments
opt.formatoptions:append({ "r" }) -- Continue comments with asterisks

vim.cmd([[au BufNewFile,BufRead *.astro setf astro]]) -- Set filetype to astro for .astro files
vim.cmd([[au BufNewFile,BufRead Podfile setf ruby]]) -- Set filetype to ruby for Podfile files

if vim.fn.has("nvim-0.8") == 1 then
  opt.cmdheight = 0 -- Set command height to 0 for Neovim 0.8+
end

if vim.fn.has("nvim-0.10") == 1 then
  opt.smoothscroll = true
  opt.foldexpr = "v:lua.require'lazyvim.util'.ui.foldexpr()"
  opt.foldmethod = "expr"
  opt.foldtext = ""
else
  opt.foldmethod = "indent"
  opt.foldtext = "v:lua.require'lazyvim.util'.ui.foldtext()"
end
