return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp", -- integrate autocompletion with language servers
    { "antosha417/nvim-lsp-file-operations", config = true }, -- modifying imports when file renamed and many more
    { "folke/neodev.nvim", opts = {} }, -- better lua language lsp
  },
  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import mason_lspconfig plugin
    local mason_lspconfig = require("mason-lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    local keymap = vim.keymap -- for conciseness

    vim.api.nvim_create_autocmd(
      "LspAttach",
      { -- these options only be available when lsp client attachs to a buffer and they will only be available on that buffer
        group = vim.api.nvim_create_augroup("UserLspConfig", {}),
        callback = function(ev)
          -- Buffer local mappings.
          -- See `:help vim.lsp.*` for documentation on any of the below functions
          local opts = { buffer = ev.buf, silent = true }

          opts.desc = "Show LSP references"
          keymap.set("n", "gR", "<cmd>FzfLua lsp_references<CR>", opts) -- show definition, references

          opts.desc = "Go to declaration"
          keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

          opts.desc = "Show LSP definitions"
          keymap.set("n", "gd", "<cmd>FzfLua lsp_definitions<CR>", opts) -- show lsp definitions

          opts.desc = "Show LSP implementations"
          keymap.set("n", "gi", "<cmd>FzfLua lsp_implementations<CR>", opts) -- show lsp implementations

          opts.desc = "Show LSP type definitions"
          keymap.set("n", "gt", "<cmd>FzfLua lsp_typedefs<CR>", opts) -- show lsp type definitions

          opts.desc = "See available code actions"
          keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

          opts.desc = "Smart rename"
          keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

          opts.desc = "Show buffer diagnostics"
          keymap.set("n", "<leader>df", "<cmd>FzfLua diagnostics_document<CR>", opts) -- show  diagnostics for file

          opts.desc = "Show line diagnostics"
          keymap.set("n", "<leader>dl", vim.diagnostic.open_float, opts) -- show diagnostics for line

          opts.desc = "Go to previous diagnostic"
          keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

          opts.desc = "Go to next diagnostic"
          keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

          opts.desc = "Show documentation for what is under cursor"
          keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

          opts.desc = "Restart LSP"
          keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
        end,
      }
    )

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    mason_lspconfig.setup_handlers({
      -- default handler for installed servers (no need to add those who are good with default configuration)
      function(server_name)
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,
      -- ["svelte"] = function()
      --   -- configure svelte server
      --   lspconfig["svelte"].setup({
      --     capabilities = capabilities,
      --     on_attach = function(client, bufnr)
      --       vim.api.nvim_create_autocmd("BufWritePost", {
      --         pattern = { "*.js", "*.ts" },
      --         callback = function(ctx)
      --           -- Here use ctx.match instead of ctx.file
      --           client.notify("$/onDidChangeTsOrJsFile", { uri = ctx.match })
      --         end,
      --       })
      --     end,
      --   })
      -- end,
      -- ["graphql"] = function()
      --   -- configure graphql language server
      --   lspconfig["graphql"].setup({
      --     capabilities = capabilities,
      --     filetypes = { "graphql", "gql", "svelte", "typescriptreact", "javascriptreact" },
      --   })
      -- end,
      -- ["emmet_ls"] = function()
      --   -- configure emmet language server
      --   lspconfig["emmet_ls"].setup({
      --     capabilities = capabilities,
      --     filetypes = { "html", "typescriptreact", "javascriptreact", "css", "sass", "scss", "less", "svelte" },
      --   })
      -- end,
      ["lua_ls"] = function()
        -- configure lua server (with special settings)
        lspconfig["lua_ls"].setup({
          capabilities = capabilities,
          single_file_support = true,
          -- root_dir = lspconfig.util.root_pattern(), -- NOTE: Use this if don't want slow loading or workspace
          settings = {
            Lua = {
              -- make the language server recognize "vim" global
              diagnostics = {
                globals = { "vim" },
              },
              completion = {
                callSnippet = "Replace",
              },
            },
          },
        })
      end,
      ["pyright"] = function() -- TODO: Need to provide some custom settings for python lsp
        lspconfig["pyright"].setup({
          capabilities = capabilities,
          filetypes = { "python" },
        })
      end,
      ["eslint"] = function()
        lspconfig["eslint"].setup({
          capabilities = capabilities,
          single_file_support = true,
          filetypes = { "javascript" },
        })
      end,
      ["tsserver"] = function()
        lspconfig["tsserver"].setup({
          capabilities = capabilities,
          single_file_support = true,
          filetypes = { "javascript" },
        })
      end,
      ["clangd"] = function()
        lspconfig["clangd"].setup({
          capabilities = capabilities,
          filetypes = { "c", "h", "cpp" },
          cmd = { "clangd", "--background-index", "--offset-encoding=utf-16" },
          single_file_support = true,
          root_dir = lspconfig.util.root_pattern(
            ".clangd",
            ".clang-tidy",
            ".clang-format",
            "compile_commands.json",
            "compile_flags.txt",
            "configure.ac",
            ".git"
          ),
        })
      end,
    })

    dofile(vim.g.base46_cache .. "lsp")
    require("nvchad.lsp")
  end,
}
