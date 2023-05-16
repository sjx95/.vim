return {
	"nvim-telescope/telescope.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	lazy = false,
	keys = function()
		local builtin = require("telescope.builtin")
		return {
			{ "gd", builtin.lsp_definitions },
			{ "gy", builtin.lsp_type_definitions },
			{ "gr", builtin.lsp_references },
			{ "gi", builtin.lsp_implementations },
		}
	end,
}
