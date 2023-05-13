-- Set needed colorschemes (will auto activate the first one)
local colorschemes = {
	{ "dracula/vim",   name = "dracula" },
	{ "tomasr/molokai" },
}

-- Set all colorscheme to load lazily
for _, p in ipairs(colorschemes) do
	p.lazy = true
end

-- Then set first colorscheme as activated one
local main = colorschemes[1]
main.lazy = false
main.priority = 1000
main.config = function(plugin, _)
	vim.cmd("set termguicolors")
	vim.cmd("colorscheme " .. plugin.name)
end

return colorschemes
