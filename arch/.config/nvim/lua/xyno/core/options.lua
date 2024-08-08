vim.cmd("let g:netrw_liststyle = 3") -- Make nvim default file explorer as tree
local opt = vim.opt -- For concise commands
local prefix = vim.env.XDG_CONFIG_HOME or vim.fn.expand("~/.config")
opt.laststatus = 3 -- show only one status bar instead of every split
opt.undodir = { prefix .. "/nvim/.undo//" } -- Defining folder for undo so that undotree works properly
opt.incsearch = true -- matches search pattern
opt.relativenumber = true -- Turn on relativenumber
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width (when using <> signs for indent)
opt.expandtab = true -- expand tab to spaces
opt.cursorline = true -- Highlight current cursor line
opt.termguicolors = true -- colorschemes to show proper color
opt.background = "dark" -- colorschemes that can be light or dark will be made dark
opt.signcolumn = "yes" -- show sign column so that text doesn't shift (error , warning)
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
-- opt.laststatus = 2 -- Always show the status line
opt.expandtab = true -- Convert tabs to spaces
opt.scrolloff = 999 -- cursor in the middle while scrolling
opt.backupskip = { "/tmp/*", "/private/tmp/*" } -- Don't create backup files for these paths
opt.inccommand = "split" -- Show live preview of substitutions in a split window
opt.ignorecase = true -- Case insensitive searching unless /C or capital in search
opt.smarttab = true -- Insert tabs based on shiftwidth and start of line context
opt.breakindent = true -- Wrap lines with the same indent as the start of the line
opt.shiftwidth = 2 -- Number of spaces for each indentation level
opt.tabstop = 2 -- Number of spaces that a tab counts for
opt.wrap = false -- Wrap lines
opt.guicursor = "n-v-i-c:block-Cursor" -- same cursor in each mode
opt.backspace = { "start", "eol", "indent" } -- Allow backspace over everything in insert mode
opt.path:append({ "**" }) -- Search down into subfolders
opt.wildignore:append({ "*/node_modules/*" }) -- Ignore node_modules folder in file searches
opt.splitbelow = true -- Horizontal splits open below current window
opt.splitright = true -- Vertical splits open to the right of current window
vim.g.lazygit_config = true
opt.splitkeep = "cursor" -- Keep cursor position when splitting windows
opt.mouse = "" -- Disable mouse support
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.virtualedit = "block" -- Cursor can be positioned where there is no actual character in v-block mode
opt.undofile = true -- Allows user to undo changes
opt.undolevels = 10000 -- So that we can undo files for days
opt.updatetime = 100 -- default is 1000
vim.cmd([[let &t_Cs = "\e[4:3m"]]) -- Enable undercurl for terminals that support it
vim.cmd([[let &t_Ce = "\e[4:0m"]]) -- Disable undercurl for terminals that support it
opt.formatoptions:append({ "r" }) -- Continue comments with asterisks
opt.smoothscroll = true -- smooth scrolling
-- 0 padding for kitty terminal when nvim opens and reset on nvim closes
-- vim.cmd([[
-- augroup kitty_mp
--     autocmd!
--     au VimLeave * :silent !kitty @ set-spacing padding=25 margin=0
--     au VimEnter * :silent !kitty @ set-spacing padding=0 margin=0
-- augroup END
-- ]])
