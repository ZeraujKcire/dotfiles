
--    ██████            ██                        
--   ██░░░░██          ░██                        
--  ██    ░░   ██████  ░██  ██████  ██████  ██████
-- ░██        ██░░░░██ ░██ ██░░░░██░░██░░█ ██░░░░ 
-- ░██       ░██   ░██ ░██░██   ░██ ░██ ░ ░░█████ 
-- ░░██    ██░██   ░██ ░██░██   ░██ ░██    ░░░░░██
--  ░░██████ ░░██████  ███░░██████ ░███    ██████ 
--   ░░░░░░   ░░░░░░  ░░░  ░░░░░░  ░░░    ░░░░░░  

-- Vim color file
-- Author: Erichain
-- Colorscheme Name: monokai_pro
-- Inspired by https://www.monokai.pro/

-- === FUNCTION === (((
local function color(group,ctermfg,ctermbg,cterm,guibg,guifg,guisp,gui)
  vim.highlight.create(group, {
		ctermfg = ctermfg,
		ctermbg = ctermbg,
		cterm = cterm,
		guibg = guibg,
		guifg = guifg,
		guisp = guisp,
		gui = gui
	}, false)
end
-- )))

-- === TERMNIAL === (((
vim.cmd([[set background=dark]])
vim.cmd([[set t_Co=256]])
-- -- )))

-- === COLORS === (((
color("Cursor"        ,231     ,231     ,"NONE"       ,"#ffffff"  ,"#ffffff"  ,"NONE"  ,"NONE")
color("Visual"        ,"NONE"  ,239     ,"NONE"       ,"#4e4e4e"  ,"NONE"     ,"NONE"  ,"NONE")
color("CursorLine"    ,"NONE"  ,237     ,"NONE"       ,"#3a3a3a"  ,"NONE"     ,"NONE"  ,"NONE")
color("CursorColumn"  ,"NONE"  ,237     ,"NONE"       ,"#3a3a3a"  ,"NONE"     ,"NONE"  ,"NONE")
color("CursorLineNr"  ,"NONE"  ,"NONE"  ,"NONE"       ,"#666666"  ,"#ffffff"  ,"NONE"  ,"NONE")
color("ColorColumn"   ,"NONE"  ,237     ,"NONE"       ,"#3a3a3a"  ,"NONE"     ,"NONE"  ,"NONE")
color("LineNr"        ,102     ,235     ,"NONE"       ,"#000000"  ,"#878787"  ,"NONE"  ,"NONE")
color("VertSplit"     ,241     ,241     ,"NONE"       ,"#606060"  ,"#606060"  ,"NONE"  ,"NONE")
color("MatchParen"    ,11      ,"NONE"  ,"underline"  ,"NONE"     ,"#fed76e"  ,"NONE"  ,"underline")
color("StatusLine"    ,231     ,241     ,"bold"       ,"#606060"  ,"#ffffff"  ,"NONE"  ,"NONE")
color("StatusLineNC"  ,231     ,241     ,"NONE"       ,"#606060"  ,"#ffffff"  ,"NONE"  ,"NONE")
color("Pmenu"         ,"NONE"  ,236     ,"NONE"       ,"#303030"  ,"NONE"     ,"NONE"  ,"NONE")
color("PmenuSel"      ,"NONE"  ,59      ,"NONE"       ,"#5f5f5f"  ,"NONE"     ,"NONE"  ,"NONE")
color("IncSearch"     ,16      ,11      ,"NONE"       ,"#fed76e"  ,"#000000"  ,"NONE"  ,"NONE")
color("Search"        ,16      ,11      ,"NONE"       ,"#fed76e"  ,"#000000"  ,"NONE"  ,"NONE")
color("Directory"     ,141     ,"NONE"  ,"NONE"       ,"NONE"     ,"#ab9ff0"  ,"NONE"  ,"NONE")
color("Folded"        ,242     ,235     ,"NONE"       ,"#262626"  ,"#666666"  ,"NONE"  ,"NONE")
color("SignColumn"    ,"NONE"  ,237     ,"NONE"       ,"#3a3a3a"  ,"NONE"     ,"NONE"  ,"NONE")
color("Normal"        ,231     ,235     ,"NONE"       ,"#000000"  ,"#ffffff"  ,"NONE"  ,"NONE")
color("Boolean"       ,141     ,"NONE"  ,"NONE"       ,"NONE"     ,"#ab9ff0"  ,"NONE"  ,"NONE")
color("Character"     ,141     ,"NONE"  ,"NONE"       ,"NONE"     ,"#ab9ff0"  ,"NONE"  ,"NONE")
color("Comment"       ,242     ,"NONE"  ,"NONE"       ,"NONE"     ,"#666666"  ,"NONE"  ,"NONE")
color("Conditional"   ,204     ,"NONE"  ,"NONE"       ,"NONE"     ,"#fd6389"  ,"NONE"  ,"NONE")
color("Constant"      ,"NONE"  ,"NONE"  ,"NONE"       ,"NONE"     ,"NONE"     ,"NONE"  ,"NONE")
color("Define"        ,204     ,"NONE"  ,"NONE"       ,"NONE"     ,"#fd6389"  ,"NONE"  ,"NONE")
color("DiffAdd"       ,231     ,155     ,"bold"       ,"#aadb7b"  ,"#ffffff"  ,"NONE"  ,"bold")
color("DiffDelete"    ,204     ,"NONE"  ,"NONE"       ,"#fd6389"  ,"NONE"     ,"NONE"  ,"NONE")
color("DiffChange"    ,"NONE"  ,"NONE"  ,"NONE"       ,"NONE"     ,"NONE"     ,"NONE"  ,"NONE")
color("DiffText"      ,231     ,24      ,"bold"       ,"#7cdce7"  ,"#ffffff"  ,"NONE"  ,"bold")
color("ErrorMsg"      ,231     ,204     ,"NONE"       ,"#fd6389"  ,"#ffffff"  ,"NONE"  ,"NONE")
color("WarningMsg"    ,231     ,204     ,"NONE"       ,"#fd6389"  ,"#ffffff"  ,"NONE"  ,"NONE")
color("Float"         ,141     ,"NONE"  ,"NONE"       ,"NONE"     ,"#ab9ff0"  ,"NONE"  ,"NONE")
color("Function"      ,81      ,"NONE"  ,"NONE"       ,"NONE"     ,"#7cdce7"  ,"NONE"  ,"NONE")
color("Identifier"    ,81      ,"NONE"  ,"NONE"       ,"NONE"     ,"#7cdce7"  ,"NONE"  ,"NONE")
color("Keyword"       ,204     ,"NONE"  ,"NONE"       ,"NONE"     ,"#fd6389"  ,"NONE"  ,"NONE")
color("Label"         ,204     ,"NONE"  ,"NONE"       ,"NONE"     ,"#fd6389"  ,"NONE"  ,"NONE")
color("NonText"       ,59      ,235     ,"NONE"       ,"#000000"  ,"#5f5f5f"  ,"NONE"  ,"NONE")
color("Number"        ,141     ,"NONE"  ,"NONE"       ,"NONE"     ,"#ab9ff0"  ,"NONE"  ,"NONE")
color("Operator"      ,204     ,"NONE"  ,"NONE"       ,"NONE"     ,"#fd6389"  ,"NONE"  ,"NONE")
color("PreProc"       ,155     ,"NONE"  ,"NONE"       ,"NONE"     ,"#aadb7b"  ,"NONE"  ,"NONE")
color("Special"       ,81      ,"NONE"  ,"NONE"       ,"NONE"     ,"#7cdce7"  ,"NONE"  ,"NONE")
color("SpellBad"      ,16      ,11      ,"NONE"       ,"#fed76e"  ,"#000000"  ,"NONE"  ,"NONE")
color("SpecialKey"    ,59      ,237     ,"NONE"       ,"#3a3a3a"  ,"#5f5f5f"  ,"NONE"  ,"NONE")
color("Statement"     ,204     ,"NONE"  ,"NONE"       ,"NONE"     ,"#fd6389"  ,"NONE"  ,"NONE")
color("StorageClass"  ,81      ,"NONE"  ,"NONE"       ,"NONE"     ,"#7cdce7"  ,"NONE"  ,"NONE")
color("String"        ,221     ,"NONE"  ,"NONE"       ,"NONE"     ,"#fed76e"  ,"NONE"  ,"NONE")
color("Tag"           ,204     ,"NONE"  ,"NONE"       ,"NONE"     ,"#fd6389"  ,"NONE"  ,"NONE")
color("Title"         ,255     ,"NONE"  ,"bold"       ,"NONE"     ,"#eeeeee"  ,"NONE"  ,"bold")
color("Todo"          ,11      ,"NONE"  ,"NONE"           ,"NONE"     ,"#fed76e"  ,"NONE"  ,"NONE")
color("Type"          ,81      ,"NONE"  ,"NONE"       ,"NONE"     ,"#7cdce7"  ,"NONE"  ,"NONE")
color("Underlined"    ,"NONE"  ,"NONE"  ,"underline"  ,"NONE"     ,"NONE"     ,"NONE"  ,"NONE")
-- )))
