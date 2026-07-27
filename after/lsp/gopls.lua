---@type vim.lsp.Config
return {
  settings = {
    gopls = {
      fileWatcher = "fsnotify",
    }
  }
}
