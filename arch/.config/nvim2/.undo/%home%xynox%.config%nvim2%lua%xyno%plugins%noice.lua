Vim�UnDo� ë�֑��g�F	1�L�C}(��k-��Q�                                    f��2   
 _�                             ����                                                                                                                                                                                                                                                                                                                                       #           V        f���    �                   �               �              #   return {     {       "folke/noice.nvim",       event = "VeryLazy",       opts = {         -- add any options here       },       dependencies = {   Z      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries         "MunifTanjim/nui.nvim",         -- OPTIONAL:   R      --   `nvim-notify` is only needed, if you want to use the notification view.   :      --   If not available, we use `mini` as the fallback         "rcarriga/nvim-notify",       },     },     require("noice").setup({       lsp = {   Y      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**         override = {   @        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,   1        ["vim.lsp.util.stylize_markdown"] = true,   L        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp         },       },   7    -- you can enable a preset for easier configuration       presets = {   F      bottom_search = true, -- use a classic bottom cmdline for search   L      command_palette = true, -- position the cmdline and popupmenu together   L      long_message_to_split = true, -- long messages will be sent to a split   H      inc_rename = false, -- enables an input dialog for inc-rename.nvim   M      lsp_doc_border = true, -- add a border to hover docs and signature help       },     }),   }5��            #                      �             �                    #                       �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                       #           V        f���     �                   �               �              #   return {     {       "folke/noice.nvim",       event = "VeryLazy",       opts = {         -- add any options here       },       dependencies = {   Z      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries         "MunifTanjim/nui.nvim",         -- OPTIONAL:   R      --   `nvim-notify` is only needed, if you want to use the notification view.   :      --   If not available, we use `mini` as the fallback         "rcarriga/nvim-notify",       },     },     require("noice").setup({       lsp = {   Y      -- override markdown rendering so that **cmp** and other plugins use **Treesitter**         override = {   @        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,   1        ["vim.lsp.util.stylize_markdown"] = true,   L        ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp         },       },   7    -- you can enable a preset for easier configuration       presets = {   F      bottom_search = true, -- use a classic bottom cmdline for search   L      command_palette = true, -- position the cmdline and popupmenu together   L      long_message_to_split = true, -- long messages will be sent to a split   H      inc_rename = false, -- enables an input dialog for inc-rename.nvim   M      lsp_doc_border = true, -- add a border to hover docs and signature help       },     }),   }5��            #                      �             �                    4                       �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                       4           V        f���     �          4      {5��                                                  5�_�                    4       ����                                                                                                                                                                                                                                                                                                                                       4           V        f���     �   3              }5��    3                     �                     5�_�                    4       ����                                                                                                                                                                                                                                                                                                                                       4           V        f���    �          @      return{{     "folke/noice.nvim",     event = "VeryLazy",   
  opts = {       lsp = {         override = {   @        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,   1        ["vim.lsp.util.stylize_markdown"] = true,   /        ["cmp.entry.get_documentation"] = true,         },       },       routes = {         {           filter = {             event = "msg_show",             any = {   $            { find = "%d+L, %d+B" },   &            { find = "; after #%d+" },   '            { find = "; before #%d+" },             },�      (   /              view = "mini",�         5          presets = {         bottom_search = true,         command_palette = true,   #      long_message_to_split = true,       },     },     -- stylua: ignore�   *           
     config = function(_, opts)   =    -- HACK: noice shows messages from before it was enabled,   =    -- but this is not ideal when Lazy is installing plugins,   *    -- so clear the messages in this case.   $    if vim.o.filetype == "lazy" then   !      vim.cmd([[messages clear]])       end        require("noice").setup(opts)     end,   }}5��    *      	      
       �      :      P      �                                z               �                    $   �             �      �                 	   0          �            5�_�                            ����                                                                                                                                                                                                                                                                                                                                       6           V        f���     �              6   return {     {       "folke/noice.nvim",       event = "VeryLazy",       opts = {         lsp = {           override = {   B          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,   3          ["vim.lsp.util.stylize_markdown"] = true,   1          ["cmp.entry.get_documentation"] = true,   
        },         },         routes = {   	        {             filter = {               event = "msg_show",               any = {   &              { find = "%d+L, %d+B" },   (              { find = "; after #%d+" },   )              { find = "; before #%d+" },               },             },             view = "mini",   
        },         },         presets = {           bottom_search = true,           command_palette = true,   %        long_message_to_split = true,         },       },     -- stylua: ignore   
  keys = {   )    { "<leader>sn", "", desc = "+noice"},   z    { "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, mode = "c", desc = "Redirect Cmdline" },   `    { "<leader>snl", function() require("noice").cmd("last") end, desc = "Noice Last Message" },   ^    { "<leader>snh", function() require("noice").cmd("history") end, desc = "Noice History" },   V    { "<leader>sna", function() require("noice").cmd("all") end, desc = "Noice All" },   \    { "<leader>snd", function() require("noice").cmd("dismiss") end, desc = "Dismiss All" },   m    { "<leader>snt", function() require("noice").cmd("pick") end, desc = "Noice Picker (Telescope/FzfLua)" },   �    { "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "Scroll Forward", mode = {"i", "n", "s"} },   �    { "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "Scroll Backward", mode = {"i", "n", "s"}},     },       config = function(_, opts)   ?      -- HACK: noice shows messages from before it was enabled,   ?      -- but this is not ideal when Lazy is installing plugins,   ,      -- so clear the messages in this case.   &      if vim.o.filetype == "lazy" then   #        vim.cmd([[messages clear]])   	      end   "      require("noice").setup(opts)       end,     },   }5��            6                      /             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        f���     �                   �               5��                   6                      /      5�_�      
                      ����                                                                                                                                                                                                                                                                                                                                                  V        f���    �                  5��                                                  5�_�         	       
           ����                                                                                                                                                                                                                                                                                                                                       6           V        f���     �                   �               �              6   return {     {       "folke/noice.nvim",       event = "VeryLazy",       opts = {         lsp = {           override = {   B          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,   3          ["vim.lsp.util.stylize_markdown"] = true,   1          ["cmp.entry.get_documentation"] = true,   
        },         },         routes = {   	        {             filter = {               event = "msg_show",               any = {   &              { find = "%d+L, %d+B" },   (              { find = "; after #%d+" },   )              { find = "; before #%d+" },               },             },             view = "mini",   
        },         },         presets = {           bottom_search = true,           command_palette = true,   %        long_message_to_split = true,         },       },     -- stylua: ignore   
  keys = {   )    { "<leader>sn", "", desc = "+noice"},   z    { "<S-Enter>", function() require("noice").redirect(vim.fn.getcmdline()) end, mode = "c", desc = "Redirect Cmdline" },   `    { "<leader>snl", function() require("noice").cmd("last") end, desc = "Noice Last Message" },   ^    { "<leader>snh", function() require("noice").cmd("history") end, desc = "Noice History" },   V    { "<leader>sna", function() require("noice").cmd("all") end, desc = "Noice All" },   \    { "<leader>snd", function() require("noice").cmd("dismiss") end, desc = "Dismiss All" },   m    { "<leader>snt", function() require("noice").cmd("pick") end, desc = "Noice Picker (Telescope/FzfLua)" },   �    { "<c-f>", function() if not require("noice.lsp").scroll(4) then return "<c-f>" end end, silent = true, expr = true, desc = "Scroll Forward", mode = {"i", "n", "s"} },   �    { "<c-b>", function() if not require("noice.lsp").scroll(-4) then return "<c-b>" end end, silent = true, expr = true, desc = "Scroll Backward", mode = {"i", "n", "s"}},     },       config = function(_, opts)   ?      -- HACK: noice shows messages from before it was enabled,   ?      -- but this is not ideal when Lazy is installing plugins,   ,      -- so clear the messages in this case.   &      if vim.o.filetype == "lazy" then   #        vim.cmd([[messages clear]])   	      end   "      require("noice").setup(opts)       end,     },   }5��            6                      /             �                                           �      5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                  V        f��     �                 -- lazy.nvim5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        f��     �                {5��                                                  5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        f��	     �                 }5��                         �                     5�_�                           ����                                                                                                                                                                                                                                                                                                                                                  V        f��     �                 }}5��                         �                     5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        f��    �                   }5��                        �                    5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        f��)     �                 return {     "folke/noice.nvim",     event = "VeryLazy",   
  opts = {       -- add any options here     },     dependencies = {   X    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries       "MunifTanjim/nui.nvim",       -- OPTIONAL:   P    --   `nvim-notify` is only needed, if you want to use the notification view.   8    --   If not available, we use `mini` as the fallback       "rcarriga/nvim-notify",     },   }5��                                  �             5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        f��+     �                   �               5��                                         �      5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        f��,   
 �                  5��                                                  5�_�                            ����                                                                                                                                                                                                                                                                                                                                                  V        f��2     �               5��                                   \               5�_�                           ����                                                                                                                                                                                                                                                                                                                            _           e                   f�Ħ   	 �                  �              �              g   ,-- NOTE: UI for messages, cmdline, and popup   return {     "folke/noice.nvim",   L  dependencies = { { "MunifTanjim/nui.nvim" }, { "rcarriga/nvim-notify" } },   
  opts = {       cmdline = {   5      enabled = true, -- enables the Noice cmdline UI   {      view = "cmdline_popup", -- view for rendering the cmdline. Change to `cmdline` to get a classic cmdline at the bottom   H      opts = {}, -- global options for the cmdline. See section on views         format = {   c        -- conceal: (default=true) This will hide the text in the cmdline that matches the pattern.   *        -- view: (default is cmdline view)   /        -- opts: any options passed to the view   8        -- icon_hl_group: optional hl_group for the icon   9        -- title: set to anything or empty string to hide   A        cmdline = { pattern = "^:", icon = "", lang = "vim" },   \        search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" },   [        search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" },   C        filter = { pattern = "^:%s*!", icon = "$", lang = "bash" },   j        lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" },   =        help = { pattern = "^:%s*he?l?p?%s+", icon = "" },   &        input = {}, -- Used by input()   >        -- lua = false, -- to disable a format, set to `false`         },       },       routes = {         {           view = "notify",   ,        filter = { event = "msg_showmode" },         },         {           filter = {             event = "msg_show",             kind = "",             find = "written",   
        },           opts = { skip = true },         },       },       lsp = {         progress = {           enabled = false,   c        -- Lsp Progress is formatted using the builtins for lsp_progress. See config.format.builtin   N        -- See the section on formatting for more details on how to customize.            format = "lsp_progress",   *        format_done = "lsp_progress_done",   I        throttle = 1000 / 30, -- frequency to update lsp progress message           view = "mini",         },         override = {   A        -- override the default lsp markdown formatter with Noice   @        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,   9        -- override the lsp markdown formatter with Noice   1        ["vim.lsp.util.stylize_markdown"] = true,   R        -- override cmp documentation with Noice (needs the other options to work)   /        ["cmp.entry.get_documentation"] = true,         },         hover = {           enabled = true,   V        silent = false, -- set to true to not show a message if hover is not available   @        view = nil, -- when nil, use defaults from documentation   =        opts = {}, -- merged with defaults from documentation         },         signature = {           enabled = true,           auto_open = {             enabled = true,   k          trigger = true, -- Automatically show signature help when typing a trigger character from the LSP   Z          luasnip = true, -- Will open signature help when jumping to Luasnip insert nodes   G          throttle = 50, -- Debounce lsp signature help request by 50ms   
        },   @        view = nil, -- when nil, use defaults from documentation   =        opts = {}, -- merged with defaults from documentation         },         message = {   (        -- Messages shown by lsp servers           enabled = true,           view = "notify",           opts = {},         },   .      -- defaults for hover and signature help         documentation = {           view = "hover",           opts = {             lang = "markdown",             replace = true,             render = "plain",   #          format = { "{message}" },   B          win_options = { concealcursor = "n", conceallevel = 3 },   
        },         },       },       presets = {   g      -- you can enable a preset by setting it to true, or a table that will override the preset config   V      -- you can also add custom presets that you can enable/disable with enabled=true   F      bottom_search = true, -- use a classic bottom cmdline for search   L      command_palette = true, -- position the cmdline and popupmenu together   L      long_message_to_split = true, -- long messages will be sent to a split   H      inc_rename = false, -- enables an input dialog for inc-rename.nvim   N      lsp_doc_border = false, -- add a border to hover docs and signature help       },     },   }5��                                  �             �                    g                       �      5�_�                    _        ����                                                                                                                                                                                                                                                                                                                            _           f                   f���     �   ^   f   g      U     -- you can also add custom presets that you can enable/disable with enabled=true   E     bottom_search = true, -- use a classic bottom cmdline for search   K     command_palette = true, -- position the cmdline and popupmenu together   K     long_message_to_split = true, -- long messages will be sent to a split   G     inc_rename = false, -- enables an input dialog for inc-rename.nvim   M     lsp_doc_border = false, -- add a border to hover docs and signature help      },5��    ^                      �                     �    _                      *                     �    `                      p                     �    a                      �                     �    b                                           �    c                      P                     �    d                      �                     5�_�                    _        ����                                                                                                                                                                                                                                                                                                                            _           d           V        f���     �   ^   g   g      T    -- you can also add custom presets that you can enable/disable with enabled=true   D    bottom_search = true, -- use a classic bottom cmdline for search   J    command_palette = true, -- position the cmdline and popupmenu together   J    long_message_to_split = true, -- long messages will be sent to a split   F    inc_rename = false, -- enables an input dialog for inc-rename.nvim   L    lsp_doc_border = false, -- add a border to hover docs and signature help     },    },5��    ^                      �                     �    _                      )                     �    `                      n                     �    a                      �                     �    b                                           �    c                      K                     �    d                      �                     �    e                      �                     5�_�                     _        ����                                                                                                                                                                                                                                                                                                                            _           _           V        f���     �   ^   e        5��    ^                      �      �              5�_�              
   	           ����                                                                                                                                                                                                                                                                                                                                                  V        f���     �               5��                                   X               5��