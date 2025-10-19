-- ============================================================================
-- LUA/PLUGINS/LAZYGIT.LUA - LazyGit Integration
-- ============================================================================

return {
  "kdheepak/lazygit.nvim",
  cmd = {
    "LazyGit",
    "LazyGitConfig",
    "LazyGitCurrentFile",
    "LazyGitFilter",
    "LazyGitFilterCurrentFile",
  },
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  keys = {
    { "<leader>gg", "<cmd>LazyGit<cr>", desc = "LazyGit" },
  },
  config = function()
    -- Create lazygit config directory if it doesn't exist
    local config_dir = vim.fn.expand "~/.config/lazygit"
    if vim.fn.isdirectory(config_dir) == 0 then vim.fn.mkdir(config_dir, "p") end

    -- Create default config file if it doesn't exist
    local config_file = config_dir .. "/config.yml"
    if vim.fn.filereadable(config_file) == 0 then
      local default_config = [[
# LazyGit Configuration
# See: https://github.com/jesseduffield/lazygit/blob/master/docs/Config.md

gui:
  # Border style: rounded, single, double, hidden
  border: "rounded"
  # Show file tree
  showFileTree: true
  # Show random tip
  showRandomTip: false
  # Show command log
  showCommandLog: true
  # Theme
  theme:
    activeBorderColor:
      - green
      - bold
    inactiveBorderColor:
      - white
    selectedLineBgColor:
      - blue

git:
  paging:
    colorArg: always
    pager: delta --dark --paging=never

  # Auto-fetch
  autoFetch: true
  autoRefresh: true

  # Commit settings
  commit:
    signOff: false

  # Merge settings
  merging:
    # Use nvim as merge tool
    manualCommit: false
    args: ""

  # Pull settings
  pull:
    mode: "merge" # or "rebase" or "ff-only"

# Keybindings customization
keybinding:
  universal:
    quit: 'q'
    quit-alt1: '<c-c>'
    return: '<esc>'
    quitWithoutChangingDirectory: 'Q'
    togglePanel: '<tab>'
    prevItem: '<up>'
    nextItem: '<down>'
    prevItem-alt: 'k'
    nextItem-alt: 'j'
    prevPage: ','
    nextPage: '.'
    scrollLeft: 'H'
    scrollRight: 'L'
    gotoTop: '<'
    gotoBottom: '>'
    toggleRangeSelect: 'v'
    rangeSelectDown: '<s-down>'
    rangeSelectUp: '<s-up>'
    prevBlock: '<left>'
    nextBlock: '<right>'
    prevBlock-alt: 'h'
    nextBlock-alt: 'l'
    nextMatch: 'n'
    prevMatch: 'N'
    startSearch: '/'
    optionMenu: 'x'
    optionMenu-alt1: '?'
    select: '<space>'
    goInto: '<enter>'
    confirm: '<enter>'
    remove: 'd'
    new: 'n'
    edit: 'e'
    openFile: 'o'
    scrollUpMain: '<pgup>'
    scrollDownMain: '<pgdown>'
    scrollUpMain-alt1: 'K'
    scrollDownMain-alt1: 'J'
    scrollUpMain-alt2: '<c-u>'
    scrollDownMain-alt2: '<c-d>'
    executeCustomCommand: ':'
    createRebaseOptionsMenu: 'm'
    pushFiles: 'P'
    pullFiles: 'p'
    refresh: 'R'
    createPatchOptionsMenu: '<c-p>'
    nextTab: ']'
    prevTab: '['
    nextScreenMode: '+'
    prevScreenMode: '_'
    undo: 'z'
    redo: '<c-z>'
    filteringMenu: '<c-s>'
    diffingMenu: 'W'
    diffingMenu-alt: '<c-e>'
    copyToClipboard: '<c-o>'
    openRecentRepos: '<c-r>'
    submitEditorText: '<enter>'
    extrasMenu: '@'
    toggleWhitespaceInDiffView: '<c-w>'
    increaseContextInDiffView: '}'
    decreaseContextInDiffView: '{'

# Update settings
update:
  method: prompt # or "never" or "background"
  days: 14

# Notifications
notARepository: 'prompt' # or 'quit' or 'skip'

# Custom commands (examples)
customCommands:
  - key: 'C'
    command: 'git cz'
    description: 'Commit with commitizen'
    context: 'files'
    loadingText: 'opening commitizen'
    subprocess: true
]]

      local file = io.open(config_file, "w")
      if file then
        file:write(default_config)
        file:close()
        vim.notify("Created lazygit config at: " .. config_file, vim.log.levels.INFO)
      end
    end
  end,
}
