
--  ██   ██                         
-- ░██  ██           ██   ██        
-- ░██ ██    █████  ░░██ ██   ██████
-- ░████    ██░░░██  ░░███   ██░░░░ 
-- ░██░██  ░███████   ░██   ░░█████ 
-- ░██░░██ ░██░░░░    ██     ░░░░░██
-- ░██ ░░██░░██████  ██      ██████ 
-- ░░   ░░  ░░░░░░  ░░      ░░░░░░  

-- === VARIABLES === (((
-- aliases
local cmd = vim.cmd
local g = vim.g
local api = vim.api
-- single mappings
local function map(mode,key,action,opts)
	local options = {noremap = true, silent = false}
	if opts then
		options = {noremap = opts, silent = true}
	end
  vim.api.nvim_set_keymap(mode, key, action, options)
end
-- function to autocommand for a mapping
local function au_m(event, group, pattern, mapping)
	api.nvim_create_autocmd(event,{
		group = group,
		pattern = pattern,
		callback = mapping,
	})
end
-- function to autocommand for a script
local function au_c(event, group, pattern, command)
	api.nvim_create_autocmd(event,{
		group = group,
		pattern = pattern,
		command = command,
	})
end
-- )))

-- === DIRECTIONS === (((
map('','j','h')
map('','k','j')
map('','l','k')
map('','ñ','l')
map('','J','0')
map('','K','G')
map('','L','gg')
map('','Ñ','$')
-- )))

-- === GENERAL === (((
map("", "<M-a>",":'<'>!column -t -s ''<left>")
map('','<Insert>','R')
map('n','<C-w>',':set wrap!<CR>')
map('','s',':s///g<left><left><left>')
map('n','S',':%s///g<left><left><left>', false)
map('n','Q','@',false)
map('n','<M-d>',':au!<CR>',false)
map('n','<M-n>',':Lex<bar> vertical resize 30<CR>')
cmd([[command W w]])
map('n','<C-q>','ZZ')
-- )))

-- === TERMINAL === (((
map('t','<Esc>','<C-\\><C-n>',false)
vim.cmd([[autocmd TermClose * execute 'bdelete! ' . expand('<abuf>')]])
-- )))

-- === DISABLE MOUSE === (((
map('n','<up>','<nop>')
map('n','<down>','<nop>')
map('n','<left>','<nop>')
map('n','<right>','<nop>')
map('i','<up>','<nop>')
map('i','<down>','<nop>')
map('i','<left>','<nop>')
map('i','<right>','<nop>')
map('v','<up>','<nop>')
map('v','<down>','<nop>')
map('v','<left>','<nop>')
map('v','<right>','<nop>')
-- )))

-- === SPELL CHECK === (((
map('n','<M-w>',':setlocal spell! spelllang=en<CR><CR>')
map('n','<C-S-ñ>',']s')
map('n','<C-S-j>','[s')
map('n','<M-c>','z=')
-- )))

-- === SEARCH === (((
map('','m',';')
map('','M',',')
-- )))

-- === COPY AND DRAG === (((
map('n','<C-e>','ggyG',false)
map('v','<C-l>',":move '<-2<CR>gv-gv")
map('v','<C-k>',":move '>+1<CR>gv-gv")
map('v','<C-ñ>','>gv')
map('v','<C-j>','<gv')
map('','<','<Nop>',false)
map('','>','<Nop>',false)
map('n','<C-ñ>','V>gv')
map('n','<C-j>','V<gv,')
map('n','<C-l>',"V:move '<-2<CR>gv-gv")
map('n','<C-k>',"V:move '>+1<CR>gv-gv")
-- )))

-- === IDENTATIONS === (((
map('n','<C-S-L>','zM')
map('n','<C-S-K>','zR')
map('n','<space>','za',false)
map('n','<M-s>','/=== ',false)
-- )))

-- === COMMENT === (((
map('v','<C-c>',":call ToggleComment()<CR>")
map('n','<C-c>',':call ToggleComment()<CR>')
map('i','<C-c>','<ESC>:call ToggleComment()<CR>A')
-- )))

-- === AUTOCOMPLETE === (((
map('i','"','"" <++><Esc>6ha')
map('i',"'","'' <++><Esc>6ha")
map('i','(','() <++><Esc>6ha')
map('i','[','[] <++><Esc>6ha')
map('i','{','{} <++><Esc>6ha')
map('i','¿','¿? <++><Esc>6ha')
map('i','<','<> <++><Esc>6ha')
-- )))

-- === SPLITS === (((
-- Moverse entre los splits.
map('n','<M-j>','<C-w>h')
map('n','<M-k>','<C-w>j')
map('n','<M-l>','<C-w>k')
map('n','<M-ñ>','<C-w>l')
-- MOVE IN INSERT MODE.
map('i','<M-j>','<Esc><C-w>h')
map('i','<M-k>','<Esc><C-w>j')
map('i','<M-l>','<Esc><C-w>k')
map('i','<M-;>','<Esc><C-w>l')
-- MOVE IN INSERT MODE.
map('t','<M-j>','<Esc><C-w>h')
map('t','<M-k>','<Esc><C-w>j')
map('t','<M-l>','<Esc><C-w>k')
map('t','<M-;>','<Esc><C-w>l')
-- Resize Splits
map('n','<M-J>',':vertical resize -5<CR>')
map('n','<M-S-ñ>',':vertical resize +5<CR>')
map('n','<M-K>',':resize -3<CR>')
map('n','<M-L>',':resize +3<CR>')
-- Dividir la ventana verticalmente.
map('','<C-s>', ':vs<CR>',false)
g.sendtowindow_use_defaults = 1
-- )))

-- === LaTeX === (((
local TeX = api.nvim_create_augroup("TeXgroup", {clear = true})
local TeX1 = api.nvim_create_augroup("TeXgroup1", {clear = true})
au_m("FileType", TeX, "tex", function()	map('n' , '<C-a>', ':!zathura<space>%:r.pdf<space>&<Enter>', false) end)
au_c("BufWritePost", TeX, "*.tex" , "silent ! xelatex %")
au_m("FileType", TeX1, "tex", function() map('n', '<M-p>', ':au BufWritePost *.tex silent ! pdflatex %<CR>') end)
au_m("FileType", TeX1, "tex", function() map('n', '<M-x>', ':au BufWritePost *.tex silent ! xelatex %<CR>') end)
au_m("FileType", TeX, "tex", function() map('n', '<M-b>', ':!bibtex %:r<CR>' , false) end)
au_c("BufReadPre", TeX, "*.log", "set filetype=log")
au_m("FileType", TeX, "tex", function() map('n', '<C-o>', ':vs %:r.log<CR>/^l\\.\\d<CR>', false) end)
au_m("FileType", TeX, "tex", function() map('n', '<C-p>', ':vs preamble.tex<CR>' , false) end)
au_m("FileType", TeX, "tex", function() map('n', '<C-b>', ':vs Referencias.bib<CR><CR>', false) end)
g.tex_flavor = 'latex'
-- )))

-- === vim === (((
-- autocmd FileType vim inoremap <tab><tab> <Esc>/<++><Enter>"_c4l
-- autocmd FileType vim inoremap new<tab> autocmd<space>FileType<space>tex<space>inoremap<space>
-- )))

-- === Rscript === (((
local Rg = api.nvim_create_augroup("Rgroup", {clear = true})
au_m("FileType", Rg, "r", function() map('n', '<C-a>', ':!zathura<space>Rplots.pdf<space>&<Enter><Enter>',false) end)
au_m("FileType", Rg, "r", function() map('n', '<M-t>', ':vs<CR>:term<CR><Esc>:set wrap<CR>:set nornu nonu<CR>AR<space>--no-save<CR>',false) end)
au_m("FileType", Rg, "r", function() map('n', '<M-c>', ':sp<CR>:term<CR><Esc>:set wrap<CR>:set nornu nonu<CR>AR<space>--no-save<CR>',false) end)
au_m("FileType", Rg, "r", function() map('n', '<M-r>', ':au BufWritePost *.r ! Rscript % > output.txt<CR><CR>',false) end)
au_m("FileType", Rg, "r", function() map('n', '<C-o>', ':vs output.txt<CR>',false) end)
au_m("FileType", Rg, "r", function() map('n', '<C-p>', ':vs functions.r<CR>',false) end)
au_m("FileType", Rg, "r", function() map('n', '<C-d>', ':vs datos.txt<CR>',false) end)
au_m("FileType", Rg, "r", function() map('t', '<C-q>', '<Esc>iq()<CR>exit<CR>') end)
au_m("FileType", Rg, "text", function() map('n', '<C-f>', "ggVG:s/\t/<space>/g<CR>gv:'<,'>'<'>!column -t -s ' '<CR>") end)
au_m("FileType", Rg, "text", function() map('n', '<C-b>', "ggVG:'<,'>'<'>!column -t -s ' '<CR>") end)
-- )))

-- === Python === (((
local Py = api.nvim_create_augroup("Pythongroup", {clear = true})
au_m("FileType", Py, "python", function() map('n', '<M-p>', ':au BufWritePost *.py silent !python3 % > output.txt<CR>',false) end)
au_m("FileType", Py, "python", function() map('n', '<M-t>', ':vs<CR>:term<CR>Apython3<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-j>',false) end)
au_m("FileType", Py, "python", function() map('n', '<M-c>', ':sp<CR>:term<CR>Apython3<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-l>',false) end)
au_m("FileType", Py, "python", function() map('n', '<M-e>', ':au BufWritePost *.py !python3 % > output.txt<CR>',false) end)
au_m("FileType", Py, "python", function() map('n', '<C-o>', ':sp output.txt<CR>',false) end)
au_m("FileType", Py, "python", function() map('n', '<C-p>', ':topleft vs functions.py<CR>',false) end)
au_m("FileType", Py, "python", function() map('t', '<C-q>', '<Esc>iexit()<CR>exit<CR>',false) end)
-- )))

-- === CPP === (((
local Cg = api.nvim_create_augroup("Cgroup", {clear = true})
au_m("FileType", Cg, {"c", "cpp"}, function() map('n', '<C-p>', ':topleft vs functions.h<CR>',false) end)
au_m("FileType", Cg, {"c", "cpp"},  function() map('n', '<M-t>', ':vs<CR>:term<CR><Esc>:set wrap<CR>:set nornu nonu<CR>ig++ -Wall *.cpp -o compilacion && ./compilacion<CR>', false) end)
au_m("FileType", Cg, {"c", "cpp"},  function() map('n', '<M-c>', ':sp<CR>:term<CR><Esc>:set wrap<CR>:set nornu nonu<CR>ig++ -Wall *.cpp -o compilacion && ./compilacion<CR>', false) end)
au_m("FileType", Cg, {"c", "cpp"},  function() map('n', '<M-CR>', ':w<CR>iclear<CR>g++ -Wall *.cpp -o compilacion && ./compilacion<CR>', false) end)
au_m("FileType", Cg, {"c", "cpp"},  function() map('t', '<C-q>', '<Esc>iexit<CR>') end)
-- )))

-- === OCTAVE === (((
local Og = api.nvim_create_augroup("Octavegroup", {clear = true})
au_m("FileType", Og, "matlab",  function() map('n', '<M-p>', ':au BufWritePost *.py silent !octave % > output.txt<CR>', false) end)
au_m("FileType", Og, "matlab",  function() map('n', '<C-p>', ':topleft vs functions.m<CR>', false) end)
au_m("FileType", Og, "matlab",  function() map('n', '<M-t>', ':vs<CR>:term<CR>Aoctave<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-j>', false) end)
au_m("FileType", Og, "matlab",  function() map('n', '<M-c>', ':sp<CR>:term<CR>Aoctave<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-l>', false) end)
au_m("FileType", Og, "matlab",  function() map('t', '<C-q>', '<Esc>iexit<CR>exit<CR>') end)
-- )))

-- === RUBY === (((
local Rug = api.nvim_create_augroup("Rubygroup", {clear = true})
au_m("FileType", Rug, "ruby",  function() map('n', '<M-e>', ':au BufWritePost *.rb !ruby % > output.txt<CR>', false) end)
au_m("FileType", Rug, "ruby",  function() map('n', '<M-p>', ':au BufWritePost *.rb silent !ruby % > output.txt<CR>', false) end)
au_m("FileType", Rug, "ruby",  function() map('n', '<C-p>', ':topleft vs<CR>:e functions.m<CR>', false) end)
au_m("FileType", Rug, "ruby",  function() map('n', '<M-t>', ':vs<CR><M-ñ>:term<CR>Airb<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-j>', false) end)
au_m("FileType", Rug, "ruby",  function() map('n', '<M-c>', ':sp<CR><M-k>:term<CR>Airb<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-l>', false) end)
au_m("FileType", Rug, "ruby",  function() map('t', '<C-q>', '<Esc>iexit<CR>exit<CR>', false) end)
-- )))

-- === CSV === (((
local CSVg = api.nvim_create_augroup("CSVgroup", {clear = true})
au_c('BufReadPre', CSVg, "*.csv", "set filetype=csv")
au_m("FileType", CSVg, "csv",  function() map('n', '<C-f>', "ggVG:s/\t/<space>/g<CR>gv:'<,'>'<'>!column -t -s ' '<CR>", false) end)
au_m("FileType", CSVg, "csv",  function() map('n', '<C-b>', "ggVG:'<,'>'<'>!column -t -s ' '<CR>", false) end)
-- )))

-- === INFO === (((
local INFO = api.nvim_create_augroup("Infogroup", {clear = true})
au_c('BufReadPre', INFO, '*.info', "set filetype=info")
-- -- )))

-- === COLOR PICKER === (((
map('i', '<M-P>', '<cmd>PickColorInsert<CR>', false)
map('n', '<M-P>', '<cmd>PickColor<CR>', false)
map('n', '<M-C>', '<cmd>ConvertHEXandRGB<CR>', false)
-- map('n', '<M-C>', '<cmd>ConvertHEXandHSL<CR>', false)
-- )))
