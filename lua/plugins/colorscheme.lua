-- Set needed colorschemes (will auto activate the first one)
local colorschemes = {
	{ "dracula/vim", name = "dracula" },
	{ "tomasr/molokai" },
}

-- Set first colorscheme as activated one
local main = colorschemes[1]
main.lazy = false
main.priority = 1000
main.config = function(plugin, opts)
	vim.cmd("set termguicolors")
	vim.cmd("colorscheme " .. plugin.name)
end

return colorschemes
