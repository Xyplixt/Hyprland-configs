return {
  "CRAG666/code_runner.nvim",
  keys = {
    { "<leader>R", ":RunCode<CR>i", desc = "Run Code Runner" },
  },
  config = function()
    require("code_runner").setup({
      filetype = {
        java = {
          "cd $dir &&",
          "javac $fileName &&",
          "java $fileNameWithoutExt",
        },
        python = "python3 -u",
        typescript = "deno run",
        rust = {
          "cd $dir &&",
          "rustc $fileName &&",
          "$dir/$fileNameWithoutExt",
        },
        c = {
          "cd $dir &&",
          "gcc $fileName -o /tmp/$fileNameWithoutExt &&",
          "/tmp/$fileNameWithoutExt &&",
          "rm /tmp/$fileNameWithoutExt",
        },
      },
    })
  end,
}
