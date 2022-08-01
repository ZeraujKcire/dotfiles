
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
	Plug 'ziontee113/color-picker.nvim'
vim.call('plug#end')
