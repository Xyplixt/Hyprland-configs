vim.g.mapleader = " " -- Spacebar as leader key
local opts = { noremap = true, silent = true }
local keymap = vim.keymap -- for conciseness

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" }) -- jk for exiting insert mode

keymap.set("n", "<ESC>", ":nohl<CR>", { desc = "Clear search highlights" }) -- clear search highlights
-- Setting up registers
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
keymap.set("n", "x", '"_x') -- different register for 'x'
keymap.set("x", "<leader>p", [["_dP]])
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Scroll Down" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Scroll Up" })
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

keymap.set("n", "<C-a>", "gg<S-v>G") -- Select all
keymap.set("n", "E", "$") -- Go to end of line
keymap.set("n", "B", "^") -- Go to beginning of line
keymap.set("n", "<Leader>o", "o<Esc>^Da", opts) -- create a new line below without continuing comments or indentation
keymap.set("n", "<Leader>O", "O<Esc>^Da", opts) -- create a new line above without continuing comments or indentation

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")
-- buffers
keymap.set("n", "[b", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
keymap.set("n", "]b", "<cmd>bnext<cr>", { desc = "Next Buffer" })
keymap.set("n", "<leader>bD", "<cmd>:bd<cr>", { desc = "Delete Buffer and Window" })
--keywordprg
keymap.set("n", "<leader>K", "<cmd>norm! K<cr>", { desc = "Keywordprg" })

-- better indenting
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")
-- lazy
keymap.set("n", "<leader>L", "<cmd>Lazy<cr>", { desc = "Lazy" })

-- Brainly Template

function InsertGivenAnswerSolution()
  local text = "A n s w e r\n\nG i v e n\n\nS o l u t i o n\n"
  local lines = vim.split(text, "\n", true)
  vim.api.nvim_buf_set_lines(0, vim.fn.line(".") - 1, vim.fn.line("."), false, lines)
end

keymap.set("n", "<leader>bgiven", function()
  InsertGivenAnswerSolution()
end, opts)
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
keymap.set("n", "<leader>btex", ":normal! i[tex] <CR>", opts)
keymap.set("n", "<leader>bsf", ":normal! i\\sf <CR>", opts)
keymap.set("n", "<leader>btext", ":normal! i[/tex] <CR>", opts)
keymap.set("n", "<leader>bsp", ":normal! i \\; <CR>", opts)
keymap.set("n", "<leader>bth", ":normal! i∴ <CR>", opts)
keymap.set("n", "<leader>bpi", ":normal! i\\pi<CR>", opts)
keymap.set("n", "<leader>bcode", ":normal! i[tex]\\underline{ \\underline{\\bold{\\texttt{ :}}}} [/tex]<CR>", opts)
keymap.set("n", "<leader>bfrac", ":normal! i[tex] \\sf \\dfrac { n }{ d } [/tex]<CR>", opts)
keymap.set("n", "<leader>bsq", ":normal! i\\sqrt{} <CR>", opts)
keymap.set("n", "<leader>bgap", ":normal! i                     ㅤ<CR>", opts)
