local mason_list = {
  "goimports-reviser",
  "gomodifytags",
  "clang_format",
}

return {
  {
    "jay-babu/mason-null-ls.nvim",
    dependencies = { "williamboman/mason.nvim" },
    opts = {
      ensure_installed = mason_list,
      handlers = {
        ["clang_format"] = function()
          local null_ls = require("null-ls")
          null_ls.register(null_ls.builtins.formatting.clang_format.with({ filetypes = { "proto" }, }))
        end,
      },
    },
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "jay-babu/mason-null-ls.nvim" },
    opts = { sources = {} },
  },
}
