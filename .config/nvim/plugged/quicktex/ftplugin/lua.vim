let g:quicktex_lua = {
	\' '   : "\<ESC>:call search('<++>')\<CR>\"_c/+>/e\<CR>",
	\'auc' : "au_c(\"<+++>\", <++>, \"<++>\", \"<++>\")",
	\'aum' : "au_m(\"<+++>\", <++>, \"<++>\", function() map('<++>', '<++>', '<++>') end)",
	\'sec' : "-- === <+++> === (((\n<++>\n-- )))",
	\'b' : "bo.",
	\'c' : "cmd.",
	\'w' : "wo.",
	\'f' : "= false",
	\'fu' : "function() <+++> end",
	\'fun' : "function <+++>()\n<++>\nend",
	\'lo' : "local ",
	\'gl' : "global ",
	\'m' : "map('<+++>','<++>','<++>')<++>",
	\'o' : "o.",
	\'op' : "opt.",
	\'t' : "= true",
	\'p' : "Plug '<+++>'",
	\'pl' : "Plug '<+++>'",
	\'P' : "Plug '<+++>'",
	\'Pl' : "Plug '<+++>'",
	\}
