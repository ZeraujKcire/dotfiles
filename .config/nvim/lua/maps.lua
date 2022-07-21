
--  ██   ██                         
-- ░██  ██           ██   ██        
-- ░██ ██    █████  ░░██ ██   ██████
-- ░████    ██░░░██  ░░███   ██░░░░ 
-- ░██░██  ░███████   ░██   ░░█████ 
-- ░██░░██ ░██░░░░    ██     ░░░░░██
-- ░██ ░░██░░██████  ██      ██████ 
-- ░░   ░░  ░░░░░░  ░░      ░░░░░░  

-- === VARIABLES === (((
local o = vim.o
local cmd = vim.cmd
local g = vim.g
local wo = vim.wo
local bo = vim.bo
local fn = vim.fn
local opt = vim.opt
local api = vim.api
local function map(mode,key,action,opts)
	local options = {noremap = true, silent = true}
	if opts then
		options = {noremap = opts, silent = true}
	end
  vim.api.nvim_set_keymap(mode, key, action, options)
end
-- local function auto(mode, files, com)
	-- vim.api.nvim_create_autocmd({mode},
	-- {
		-- pattern = {files},
		-- command = {com}
	-- }
	-- )
-- end
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
map('v','<A-a>',":'<'>!column -t -s ''<left>")
map('','<Insert>','R')
map('n','<C-w>',':set wrap!<CR>')
map('','s',':s///g<left><left><left>',false)
map('n','S',':%s///g<left><left><left>', false)
map('n','Q','@',false)
map('n','<M-d>',':au!<CR>',false)
map('n','<M-n>',':Lex<bar> vertical resize 30<CR>')
vim.cmd([[command W w]])
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
map('n','<M-w>',':setlocal spell! spelllang=es<CR>')
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
map('v',';','>gv')
map('v','<C-j>','<gv')
map('','<','<Nop>',false)
map('','>','<Nop>',false)
map('n',';','V>gv')
map('n','<C-j>','V<gv,')
map('n','<C-l>',"V:move '<-2<CR>gv-gv")
map('n','<C-k>',"V:move '>+1<CR>gv-gv")
-- )))

-- === IDENTATIONS === (((
map('n','<C-S-L>','zM')
map('n','<C-S-K>','zR')
map('n','<space>','za',false)
map('n','<A-s>','/=== ',false)
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
map('n','<M-;>','<C-w>l')
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
map('','<C-s>', ':vert split<CR>',false)
g.sendtowindow_use_defaults = 1
-- )))

-- === LaTeX === (((
vim.cmd([[autocmd FileType tex nmap <C-a> :!zathura<space>%:r.pdf<space>&<Enter><Enter>]])
-- vim.api.nvim_create_autocmd("FileType",{
-- 	pattern = "tex",
-- 	command = "nmap <C-a> :!zathura<space>%:r.pdf<space>&<Enter><Enter>",
-- })
-- auto("FileType" , 'tex' , "nmap <C-a> :!zathura<space>%:r.pdf<space>&<Enter><Enter>")
vim.cmd([[au BufWritePost *.tex silent ! xelatex %]])
vim.cmd([[autocmd FileType tex nmap <M-p> :au BufWritePost *.tex silent ! pdflatex %<CR>]])
vim.cmd([[autocmd FileType tex nmap <M-e> :au BufWritePost *.tex silent ! xelatex %<CR>]])
vim.cmd([[autocmd FileType tex nmap <A-b> :!bibtex %:r<CR>]])
vim.cmd([[au BufReadPre *.log set filetype=log]])
--auto("BufReadPre", '*.log', "set filetype=log")
vim.cmd([[autocmd FileType tex nmap <C-o> :vert split<CR><M-;>:e %:r.log<CR>:/^l\.\d<CR>]])
vim.cmd([[autocmd FileType tex nmap <C-p> :vert split<CR><M-;>:e preamble.tex<CR>]])
vim.cmd([[autocmd FileType tex nmap <C-b> :vert split<CR><M-;>:e Referencias.bib<CR>]])
g.tex_flavor = 'latex'
-- )))

-- === vim === (((
-- autocmd FileType vim inoremap <tab><tab> <Esc>/<++><Enter>"_c4l
-- autocmd FileType vim inoremap new<tab> autocmd<space>FileType<space>tex<space>inoremap<space>
-- )))

-- === Rscript === (((
vim.cmd([[au FileType r nmap <C-a> :!zathura<space>Rplots.pdf<space>&<Enter><Enter>]])
vim.cmd([[au FileType r nmap <M-t> :vs<CR><M-;>:term<CR><Esc>:set wrap<CR>:set nornu nonu<CR>AR<space>--no-save<CR><Esc><M-j>]])
vim.cmd([[au FileType r nmap <M-c> :sp<CR><M-k>:term<CR><Esc>:set wrap<CR>:set nornu nonu<CR>AR<space>--no-save<CR><Esc><M-l>]])
vim.cmd([[au FileType r nmap <M-r> :au BufWritePost *.r ! Rscript % > output.txt<CR>]])
vim.cmd([[au FileType r nmap <C-o> :vert split<CR><M-;>:e output.txt<CR>]])
vim.cmd([[au FileType r nmap <C-p> :vert split<CR><M-;>:e functions.r<CR>]])
vim.cmd([[au FileType r nmap <C-d> :vert split<CR><M-;>:e datos.txt<CR>]])
vim.cmd([[au FileType r tnoremap <C-q> <Esc>iq()<CR>exit<CR>]])
vim.cmd([[au FileType text nnoremap <C-f> ggVG:s/\t/<space>/g<CR>gv:'<,'>'<'>!column -t -s ' '<CR>]])
vim.cmd([[au FileType text nnoremap <C-b> ggVG:'<,'>'<'>!column -t -s ' '<CR>]])
-- )))

-- === Python === (((
vim.cmd([[au FileType python nmap <M-p> :au BufWritePost *.py silent !python3 % > output.txt<CR>]])
vim.cmd([[au FileType python nmap <M-t> :vs<CR><M-;>:term<CR>Apython3<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-j>]])
vim.cmd([[au FileType python nmap <M-c> :sp<CR><M-k>:term<CR>Apython3<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-l>]])
vim.cmd([[au FileType python nmap <M-e> :au BufWritePost *.py !python3 % > output.txt<CR>]])
vim.cmd([[au FileType python nmap <C-o> :split<CR><M-k>:e output.txt<CR>]])
vim.cmd([[au FileType python nmap <C-p> :topleft vs<CR>:e functions.py<CR>]])
vim.cmd([[au FileType python tnoremap <C-q> <Esc>iexit()<CR>exit<CR>]])
-- )))

-- === CPP === (((
vim.cmd([[au FileType c,cpp nmap <C-p> :topleft vs<CR>:e functions.h<CR>]])
vim.cmd([[au FileType cpp nmap <M-t> :vs<CR><M-;>:term<CR><Esc>:set wrap<CR>:set nornu nonu<CR>ig++ -Wall *.cpp -o compilacion && ./compilacion<CR>]])
vim.cmd([[au FileType c nmap <M-t> :vs<CR><M-;>:term<CR><Esc>:set wrap<CR>:set nornu nonu<CR>ig++ -Wall *.c -o compilacion && ./compilacion<CR>]])
vim.cmd([[au FileType cpp nmap <M-c> :sp<CR><M-k>:term<CR><Esc>:set wrap<CR>:set nornu nonu<CR>ig++ -Wall *.cpp -o compilacion && ./compilacion<CR>]])
vim.cmd([[au FileType c nmap <M-c> :sp<CR><M-k>:term<CR><Esc>:set wrap<CR>:set nornu nonu<CR>ig++ -Wall *.c -o compilacion && ./compilacion<CR>]])
vim.cmd([[au FileType cpp nmap <M-CR> :write<CR><M-;>iclear<CR>g++ -Wall *.cpp -o compilacion && ./compilacion<CR>]])
vim.cmd([[au FileType c nmap <M-CR> :write<CR><M-;>iclear<CR>g++ -Wall *.c -o compilacion && ./compilacion<CR>]])
vim.cmd([[au FileType c,cpp tnoremap <C-q> <Esc>iexit<CR>]])
-- )))

-- === OCTAVE === (((
vim.cmd([[au FileType matlab nmap <M-p> :au BufWritePost *.py silent !octave % > output.txt<CR>]])
vim.cmd([[au FileType matlab nmap <C-p> :topleft vs<CR>:e functions.m<CR>]])
vim.cmd([[au FileType matlab nmap <M-t> :vs<CR><M-;>:term<CR>Aoctave<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-j>]])
vim.cmd([[au FileType matlab nmap <M-c> :sp<CR><M-k>:term<CR>Aoctave<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-l>]])
vim.cmd([[au FileType matlab tnoremap <C-q> <Esc>iexit<CR>exit<CR>]])
-- )))

-- === RUBY === (((
vim.cmd([[au FileType ruby nmap <M-e> :au BufWritePost *.rb !ruby % > output.txt<CR>]])
vim.cmd([[au FileType ruby nmap <M-p> :au BufWritePost *.rb silent !ruby % > output.txt<CR>]])
vim.cmd([[au FileType ruby nmap <C-p> :topleft vs<CR>:e functions.m<CR>]])
vim.cmd([[au FileType ruby nmap <M-t> :vs<CR><M-;>:term<CR>Airb<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-j>]])
vim.cmd([[au FileType ruby nmap <M-c> :sp<CR><M-k>:term<CR>Airb<CR><Esc>:set wrap<CR>:set nornu nonu<CR><M-l>]])
vim.cmd([[au FileType matlab tnoremap <C-q> <Esc>iexit<CR>exit<CR>]])
-- )))

-- === CSV === (((
vim.cmd([[au BufReadPre *.csv set filetype=csv]])
vim.cmd([[au FileType csv nnoremap <C-f> ggVG:s/\t/<space>/g<CR>gv:'<,'>'<'>!column -t -s ' '<CR>]])
vim.cmd([[au FileType csv nnoremap <C-b> ggVG:'<,'>'<'>!column -t -s ' '<CR>]])
-- )))
