local dap_keymaps = {
  { "<leader>db", function() require("dap").toggle_breakpoint() end,                                    desc = "toggle [d]ebug [b]reakpoint" },
  { "<leader>dB", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end, desc = "[d]ebug [B]reakpoint" },
  { "<leader>dc", function() require("dap").continue() end,                                             desc = "[d]ebug [c]ontinue (start here)" },
  { "<leader>dC", function() require("dap").run_to_cursor() end,                                        desc = "[d]ebug [C]ursor" },
  { "<leader>dg", function() require("dap").goto_() end,                                                desc = "[d]ebug [g]o to line" },
  { "<leader>do", function() require("dap").step_over() end,                                            desc = "[d]ebug step [o]ver" },
  { "<leader>dO", function() require("dap").step_out() end,                                             desc = "[d]ebug step [O]ut" },
  { "<leader>di", function() require("dap").step_into() end,                                            desc = "[d]ebug [i]nto" },
  { "<leader>dj", function() require("dap").down() end,                                                 desc = "[d]ebug [j]ump down" },
  { "<leader>dk", function() require("dap").up() end,                                                   desc = "[d]ebug [k]ump up" },
  { "<leader>dl", function() require("dap").run_last() end,                                             desc = "[d]ebug [l]ast" },
  { "<leader>dp", function() require("dap").pause() end,                                                desc = "[d]ebug [p]ause" },
  { "<leader>dr", function() require("dap").repl.toggle() end,                                          desc = "[d]ebug [r]epl" },
  { "<leader>dR", function() require("dap").clear_breakpoints() end,                                    desc = "[d]ebug [R]emove breakpoints" },
  { "<leader>ds", function() require("dap").session() end,                                              desc = "[d]ebug [s]ession" },
  { "<leader>dt", function() require("dap").terminate() end,                                            desc = "[d]ebug [t]erminate" },
  { "<leader>dw", function() require("dap.ui.widgets").hover() end,                                     desc = "[d]ebug [w]idgets" },
}

local dapui_keys = {
  { "<leader>du", function() require("dapui").toggle({}) end, desc = "[d]ap [u]i" },
  { "<leader>de", function() require("dapui").eval() end,     desc = "[d]ap [e]val" },
}

return {
  {
    "jay-babu/mason-nvim-dap.nvim",
    dependencies = { "mason-org/mason.nvim", "mfussenegger/nvim-dap" },
    lazy = false,
    opts = {
      ensure_installed = { 'delve' },
      -- handlers = {}, -- sets up dap in the predefined manner
    },
  },
  {
    "mfussenegger/nvim-dap",
    event = "VeryLazy",
    keys = dap_keymaps
  },
  {
    'leoluz/nvim-dap-go',
    opts = {
      -- delve configurations
      delve = {
        -- the path to the executable dlv which will be used for debugging.
        -- by default, this is the "dlv" executable on your PATH.
        path = "dlv",
        -- time to wait for delve to initialize the debug session.
        -- default to 20 seconds
        initialize_timeout_sec = 20,
        -- a string that defines the port to start delve debugger.
        -- default to string "${port}" which instructs nvim-dap
        -- to start the process in a random available port
        port = "${port}",
        -- additional args to pass to dlv
        args = {},
        -- the build flags that are passed to delve.
        -- defaults to empty string, but can be used to provide flags
        -- such as "-tags=unit" to make sure the test suite is
        -- compiled during debugging, for example.
        -- passing build flags using args is ineffective, as those are
        -- ignored by delve in dap mode.
        build_flags = "-gcflags=all=-l",
      },
    },
  },
  {
    "rcarriga/nvim-dap-ui",
    dependencies = { "mfussenegger/nvim-dap", "nvim-neotest/nvim-nio" },
    config = function(_, opts)
      local dapui = require("dapui")
      dapui.setup(opts)

      local dap = require("dap")
      dap.listeners.after.event_initialized["dapui"] = function() dapui.open() end
      dap.listeners.before.event_terminated["dapui"] = function() dapui.close() end
      dap.listeners.before.event_exited["dapui"] = function() dapui.close() end
    end,
    keys = dapui_keys,
  },
  { "theHamsta/nvim-dap-virtual-text", opts = {}, },
}
