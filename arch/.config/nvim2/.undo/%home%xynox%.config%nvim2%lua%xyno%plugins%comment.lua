Vim�UnDo� �РB}�'���nB��z��3�v�;)�w�                                      f��    _�                             ����                                                                                                                                                                                                                                                                                                                                                  V        f��    �                  %-- To add motions to 'gc' like 'gc2j'   return {     "numToStr/Comment.nvim",   )  event = { "BufReadPre", "BufNewFile" },     dependencies = {   2    "JoosepAlviste/nvim-ts-context-commentstring",     },     config = function()   #    -- import comment plugin safely   &    local comment = require("Comment")       b    local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")           -- enable comment       comment.setup({   4      -- for commenting tsx, jsx, svelte, html files   <      pre_hook = ts_context_commentstring.create_pre_hook(),       })     end,   }5��                                  1      k      5�_�                             ����                                                                                                                                                                                                                                                                                                                                                  V        f��    �                  (-- -- To add motions to 'gc' like 'gc2j'   -- return {   --   "numToStr/Comment.nvim",   ,--   event = { "BufReadPre", "BufNewFile" },   --   dependencies = {   5--     "JoosepAlviste/nvim-ts-context-commentstring",   --   },   --   config = function()   &--     -- import comment plugin safely   )--     local comment = require("Comment")   --   e--     local ts_context_commentstring = require("ts_context_commentstring.integrations.comment_nvim")   --   --     -- enable comment   --     comment.setup({   7--       -- for commenting tsx, jsx, svelte, html files   ?--       pre_hook = ts_context_commentstring.create_pre_hook(),   	--     })   	--   end,   -- }5��                                  k      1      5��