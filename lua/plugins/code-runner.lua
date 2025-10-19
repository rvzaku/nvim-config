-- ============================================================================
-- LUA/PLUGINS/CODE-RUNNER.LUA - Execute Code
-- ============================================================================

return {
  "CRAG666/code_runner.nvim",
  cmd = { "RunCode", "RunFile", "RunClose", "RunProject" },
  opts = {
    mode = "term",
    focus = false,
    startinsert = false,
    term = {
      position = "bot",
      size = 12,
    },
    filetype = {
      c = {
        "cd $dir &&",
        "gcc $fileName -o $fileNameWithoutExt &&",
        "$dir/$fileNameWithoutExt",
      },
      cpp = {
        "cd $dir &&",
        "g++ -std=c++17 $fileName -o $fileNameWithoutExt &&",
        "$dir/$fileNameWithoutExt",
      },
      java = {
        "cd $dir &&",
        "javac $fileName &&",
        "java $fileNameWithoutExt",
      },
      rust = {
        "cd $dir &&",
        "rustc $fileName &&",
        "$dir/$fileNameWithoutExt",
      },
      go = "go run $fileName",
      python = "python3 -u $fileName",
      javascript = "node $fileName",
      typescript = "ts-node $fileName",
      sh = "bash $fileName",
      bash = "bash $fileName",
      lua = "lua $fileName",
      r = "Rscript $fileName",
      ruby = "ruby $fileName",
      perl = "perl $fileName",
    },
    project = {
      ["Cargo.toml"] = "cargo run",
      ["package.json"] = "npm start",
      ["go.mod"] = "go run .",
      ["Makefile"] = "make run",
      ["CMakeLists.txt"] = {
        "cd $dir &&",
        "mkdir -p build &&",
        "cd build &&",
        "cmake .. &&",
        "make &&",
        "./main",
      },
    },
  },
}
