-- linting show errors and warnings in your code
return {
  "mfussenegger/nvim-lint",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local lint = require("lint")
    local eslint = lint.linters.eslint_d -------------- this line

    lint.linters_by_ft = {
      javascript = { "eslint_d" },
      python = { "flake8" },
      -- css = { "stylelint" },
      -- html = { "htmlhint" },
      c = { "cpplint" },
    }
    ----------------------- this para
    eslint.args = {
      "--no-warn-ignored", -- <-- this is the key argument
      "--format",
      "json",
      "--stdin",
      "--stdin-filename",
      function()
        return vim.api.nvim_buf_get_name(0)
      end,
    }
    ----------------------- this para

    local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })

    vim.api.nvim_create_autocmd(
      { "BufEnter", "BufWritePost", "InsertLeave" }, -- Linting will trigger on these events (:h event)

      {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      }
    )

    vim.keymap.set("n", "<leader>cl", function()
      lint.try_lint()
    end, { desc = "Trigger linting for current file" })
  end,
}
