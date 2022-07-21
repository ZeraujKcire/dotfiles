
--    ████████                                             ██
--   ██░░░░░░██                                           ░██
--  ██      ░░   █████  ███████   █████  ██████  ██████   ░██
-- ░██          ██░░░██░░██░░░██ ██░░░██░░██░░█ ░░░░░░██  ░██
-- ░██    █████░███████ ░██  ░██░███████ ░██ ░   ███████  ░██
-- ░░██  ░░░░██░██░░░░  ░██  ░██░██░░░░  ░██    ██░░░░██  ░██
--  ░░████████ ░░██████ ███  ░██░░██████░███   ░░████████ ███
--   ░░░░░░░░   ░░░░░░ ░░░   ░░  ░░░░░░ ░░░     ░░░░░░░░ ░░░ 

-- === VARIABLES === (((
local o   = vim.o
local cmd = vim.cmd
local g   = vim.g
local wo  = vim.wo
local bo  = vim.bo
local fn  = vim.fn
local opt = vim.opt
local api = vim.api
-- )))

-- === INPUT KEYBOARD === (((
opt.clipboard = 'unnamedplus'
opt.encoding  = 'utf-8'
-- )))

-- === INTERFAZ === (((
wo.number         = true
wo.relativenumber = true
wo.cursorline     = true
wo.cursorlineopt  = 'number'
wo.wrap           = false
o.lazyredraw      = true
o.laststatus      = 0
o.incsearch       = true
o.guicursor       = ''
o.termguicolors   = true
wo.foldmethod     = 'marker'
wo.foldmarker     = '(((,)))'
o.hlsearch        = false
o.inccommand      = 'nosplit'

vim.cmd([[
func! Stl_filename()
	return expand('%:t:r')
endfunc
set rulerformat=%60(%p%%\ \%=[%<\ \%{Stl_filename()}\ \]\ \%m\ \%=%Y%)
]])
-- o.shortmess="a"
-- )))

-- === CURSOR EN EL CENTRO === (((
vim.cmd([[
autocmd CursorMoved,CursorMovedI * call CentredCursor()
function! CentredCursor()
    let pos = getpos(".")
    normal! zz
    normal! zszH
    call setpos(".", pos)
endfunction
]])
-- )))

-- === TABS === (((
bo.shiftwidth  = 2
bo.tabstop     = 2
bo.autoindent  = false
bo.cindent     = false
bo.smartindent = false
bo.indentexpr  = ''
bo.fo          = 'jql'
vim.api.nvim_command('filetype indent off')
-- )))

-- === AUX FILES === (((
bo.swapfile = false
-- )))

-- === FUNCTION TO COMMENT FILES === (((
vim.cmd([[
let s:comment_map = { 
    \   "ahk": ';',
		\   "beamer" : "%",
    \   "bash_profile": '#',
    \   "bashrc": '#',
    \   "bat": 'REM',
    \   "bib": "#",
    \   "c": '\/\/',
    \   "conf": '#',
    \   "cpp": '\/\/',
    \   "desktop": '#',
    \   "eml": '>',
    \   "fstab": '#',
    \   "go": '\/\/',
    \   "java": '\/\/',
    \   "javascript": '\/\/',
    \   "lua": '--',
    \   "mail": '>',
		\   "manim" : '#',
		\   "matlab" : "%",
    \   "php": '\/\/',
    \   "profile": '#',
    \   "python": '#',
    \   "r": '#',
    \   "ruby": '#',
    \   "rust": '\/\/',
    \   "scala": '\/\/',
    \   "sh": '#',
    \   "sty": '%',
    \   "tex": '%',
    \   "text": '#',
		\   "toml": '#',
    \   "vim": '"',
    \ }

" FUNCIÓN
function! ToggleComment()
	if has_key(s:comment_map, &filetype)
		let comment_leader = s:comment_map[&filetype]
		if getline('.') =~ "^\\s*" . comment_leader . " " 
			" Uncomment the line
			execute "silent s/^\\(\\s*\\)" . comment_leader . " /\\1/"
		else 
			if getline('.') =~ "^\\s*" . comment_leader
				" Uncomment the line
				execute "silent s/^\\(\\s*\\)" . comment_leader . "/\\1/"
			else
				" Comment the line
				execute "silent s/^\\(\\s*\\)/\\1" . comment_leader . " /"
			end
		end
else
			echo "No comment leader found for filetype"
	end
endfunction
]])
-- )))
