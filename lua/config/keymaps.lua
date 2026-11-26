-- Global mappings.
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float)
vim.keymap.set("n", "<space>q", vim.diagnostic.setloclist)
vim.keymap.set("n", "]d", function() vim.diagnostic.jump({ count = 1, float = true, }) end, { desc = "Next diagnostic" })
vim.keymap.set("n", "[d", function() vim.diagnostic.jump({ count = -1, float = true, }) end,
  { desc = "Previous diagnostic" })

-- Use LspAttach autocommand to only map the following keys
-- after the language server attaches to the current buffer
vim.api.nvim_create_autocmd("LspAttach", {
  group = vim.api.nvim_create_augroup("UserLspConfig", {}),
  callback = function(ev)
    -- Enable completion triggered by <c-x><c-o>
    vim.bo[ev.buf].omnifunc = "v:lua.vim.lsp.omnifunc"

    -- Buffer local mappings.
    -- See `:help vim.lsp.*` for documentation on any of the below functions
    local opts = { buffer = ev.buf }
    -- vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    -- vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    -- vim.keymap.set("n", "gy", vim.lsp.buf.type_definition, opts)
    -- vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    -- vim.keymap.set("n", "gI", vim.lsp.buf.implementation, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, opts)
  end,
})

-- Copy a location or Visual range in OpenCode's file:Lline:Ccolumn format.
vim.keymap.set({ "n", "x" }, "<leader>yl", function()
  local file = vim.fn.expand("%:.")
  if file == "" then
    vim.notify("No file name to copy", vim.log.levels.WARN)
    return
  end

  local mode = vim.fn.mode()
  local to = { vim.fn.line("."), vim.fn.col(".") }
  local location = string.format("%s:L%d:C%d", file, to[1], to[2])
  if mode == "v" or mode == "V" or mode == "\22" then
    -- Read the live selection, not marks from a previous Visual selection.
    local from = { vim.fn.line("v"), vim.fn.col("v") }
    if from[1] > to[1] or (from[1] == to[1] and from[2] > to[2]) then
      from, to = to, from
    end

    if mode == "V" then
      location = string.format("%s:L%d-L%d", file, from[1], to[1])
    else
      -- A block selection is represented by its top-left/bottom-right bounds.
      if mode == "\22" and from[2] > to[2] then
        from[2], to[2] = to[2], from[2]
      end
      location = string.format("%s:L%d:C%d-L%d:C%d", file, from[1], from[2], to[1], to[2])
    end
    vim.cmd.normal({ "\27", bang = true })
  end

  vim.fn.setreg("+", location)
  vim.notify("Copied: " .. location)
end, { desc = "Yank location or selected range" })
