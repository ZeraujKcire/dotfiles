
 -- ███████   ██                 ██                 
-- ░██░░░░██ ░██          █████ ░░                  
-- ░██   ░██ ░██ ██   ██ ██░░░██ ██ ███████   ██████
-- ░███████  ░██░██  ░██░██  ░██░██░░██░░░██ ██░░░░ 
-- ░██░░░░   ░██░██  ░██░░██████░██ ░██  ░██░░█████ 
-- ░██       ░██░██  ░██ ░░░░░██░██ ░██  ░██ ░░░░░██
-- ░██       ███░░██████  █████ ░██ ███  ░██ ██████ 
-- ░░       ░░░  ░░░░░░  ░░░░░  ░░ ░░░   ░░ ░░░░░░  

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')
	Plug 'brennier/quicktex'
	Plug 'habamax/vim-sendtoterm'
	Plug 'salsifis/vim-transpose'
vim.call('plug#end')
