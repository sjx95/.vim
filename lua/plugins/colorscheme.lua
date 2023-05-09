-- Set needed colorschemes (will auto activate the first one)
local colorschemes = {
	{ "dracula/vim", name = "dracula" },
	{ "tomasr/molokai" },
}

-- Activate first colorscheme
local main = colorschemes[1]
main.lazy = false
main.priority = 1000
main.config = function (plugin, opts)
	vim.cmd("set termguicolors")
	vim.cmd("colorscheme " .. plugin.name)
end

return colorschemes
