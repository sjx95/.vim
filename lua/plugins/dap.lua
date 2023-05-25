return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = { "williamboman/mason.nvim", "mfussenegger/nvim-dap" },
    lazy = false,
    opts = {
      ensure_installed = { 'delve' },
      handlers = {}, -- sets up dap in the predefined manner
    },
  },
  { "rcarriga/nvim-dap-ui", opts = {}, },
  { 'leoluz/nvim-dap-go',   opts = {}, },
}
