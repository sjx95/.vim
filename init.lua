-- init lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- load plugins
require("lazy").setup({ "folke/lazy.nvim", { import = "plugins" } })

-- basic vimL scripts
vim.cmd("source " .. vim.fn.stdpath("config") .. "/config/fatih_default.vim")
vim.cmd("source " .. vim.fn.stdpath("config") .. "/config/custom.vim")

-- lua scripts
require('config.keymaps')

-- others
vim.api.nvim_create_user_command("Format", function() vim.lsp.buf.format() end, {})
