local discipline = require("craftzdog.discipline")

discipline.cowboy()

local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Do things without affecting the registers
keymap.set("n", "x", '"_x')
keymap.set("n", "<Leader>p", '"0p')
keymap.set("n", "<Leader>P", '"0P')
keymap.set("v", "<Leader>p", '"0p')
keymap.set("n", "<Leader>c", '"_c')
keymap.set("n", "<Leader>C", '"_C')
keymap.set("v", "<Leader>c", '"_c')
keymap.set("v", "<Leader>C", '"_C')
keymap.set("n", "<Leader>d", '"_d')
keymap.set("n", "<Leader>D", '"_D')
keymap.set("v", "<Leader>d", '"_d')
keymap.set("v", "<Leader>D", '"_D')
keymap.set("x", "<leader>p", [["_dP]])
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up" })
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")
keymap.set("n", "<leader>R", ":RunCode<CR>i", { desc = "Run Code" })
-- Twilight
keymap.set("n", "tw", ":Twilight<CR>", { desc = "Toggle Twilight" })
-- UndoTree
keymap.set("n", "<leader>T", ":UndotreeToggle<CR>i", { desc = "Toggle UndoTree" })
-- Increment/decrement
keymap.set("n", "+", "<C-a>")
keymap.set("n", "-", "<C-x>")
-- Delete a word backwards
keymap.set("n", "dw", 'vb"_d')
-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")
-- End of line and Begin of line
keymap.set("n", "E", "$")
keymap.set("n", "B", "^")
-- Files
keymap.set("n", "QQ", ":q!<CR>", { desc = "Quit Force" })
keymap.set("n", "WW", ":w!<CR>", { desc = "Quit Write" })
keymap.set("n", "<leader>qq", ":q<CR>", { desc = "Quit" })

-- Save with root permission (not working for now)
--vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- Disable continuations
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts)
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts)

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- New tab
keymap.set("n", "te", ":tabedit")
keymap.set("n", "<tab>", ":tabnext<Return>", opts)
keymap.set("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)
-- Move window
-- keymap.set("n", "sh", "<C-w>h")
-- keymap.set("n", "sk", "<C-w>k")
-- keymap.set("n", "sj", "<C-w>j")
-- keymap.set("n", "sl", "<C-w>l")
-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
-- For brainly
keymap.set("n", "<leader>bsolution", ":normal! iS o l u t i o n<CR>", opts)
keymap.set("n", "<leader>bqq", ":normal! i⚊⚊⚊⚊ ⓵<CR>", opts)
keymap.set("n", "<leader>bww", ":normal! i⚊⚊⚊⚊ ⓶<CR>", opts)
keymap.set("n", "<leader>bee", ":normal! i⚊⚊⚊⚊ ⓷<CR>", opts)
keymap.set("n", "<leader>brr", ":normal! i⚊⚊⚊⚊ ⓸<CR>", opts)
keymap.set("n", "<leader>btt", ":normal! i⚊⚊⚊⚊ ⓹<CR>", opts)
keymap.set("n", "<leader>bqw", ":normal! i➠ <CR>", opts)
keymap.set("n", "<leader>bas", ":normal! i: ➜ <CR>", opts)
keymap.set("n", "<leader>bzx", ":normal! i: : ➨  <CR>", opts)
keymap.set("n", "<leader>bmu", ":normal! i\\times<CR>", opts)
keymap.set("n", "<leader>bsd", ":normal! i⟮ <CR>", opts)
keymap.set("n", "<leader>bkl", ":normal! i⟯ <CR>", opts)
keymap.set("n", "<leader>bbr", ":normal! i\\bigg\\lgroup <CR>", opts)
keymap.set("n", "<leader>bbra", ":normal! i\\bigg\\rgroup <CR>", opts)
keymap.set("n", "<leader>btextt", ":normal! i[tex] \\sf  [/tex]<CR>", opts)
keymap.set("n", "<leader>bsp", ":normal! i\\;<CR>", opts)
keymap.set("n", "<leader>bgiven", ":normal! iG i v e n<CR>", opts)
keymap.set("n", "<leader>bth", ":normal! i∴<CR>", opts)
keymap.set("n", "<leader>banswer", ":normal! iA n s w e r<CR>", opts)
keymap.set("n", "<leader>bpi", ":normal! i\\pi<CR>", opts)
keymap.set("n", "<leader>bcode", ":normal! i[tex]\\underline{ \\underline{\\bold{\\texttt{ :}}}} [/tex]<CR>", opts)
keymap.set("n", "<leader>bfrac", ":normal! i[tex] \\sf \\dfrac { n }{ d } [/tex]<CR>", opts)
keymap.set("n", "<leader>bfind", ":normal! iF i n d<CR>", opts)
keymap.set("n", "<leader>bsq", ":normal! i\\sqrt{} <CR>", opts)
keymap.set("n", "<leader>bgap", ":normal! i                     ㅤ<CR>", opts)

-- Diagnostics
keymap.set("n", "<leader>j>", function()
	vim.diagnostic.goto_next()
end, opts)

keymap.set("n", "<leader>r", function()
	require("craftzdog.hsl").replaceHexWithHSL()
end, { desc = "Replace hex with hsl" })

keymap.set("n", "<leader>i", function()
	require("craftzdog.lsp").toggleInlayHints()
end)
