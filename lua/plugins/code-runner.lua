-- ============================================================================
-- LUA/PLUGINS/CODE-RUNNER.LUA - Execute Code
-- ============================================================================

return {
  "CRAG666/code_runner.nvim",
  cmd = { "RunCode", "RunFile", "RunClose" },
  opts = {
    mode = "term",
    focus = false,
    startinsert = false,
    term = {
      position = "bot",
      size = 12,
    },
    filetype = {
      c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
      cpp = "cd $dir && g++ -std=c++17 $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
      java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
      rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
      go = "go run $fileName",
      python = "python3 -u $fileName",
      javascript = "node $fileName",
      typescript = "ts-node $fileName",
      sh = "bash $fileName",
      bash = "bash $fileName",
      lua = "lua $fileName",
    },
  },
}
