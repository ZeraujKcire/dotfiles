let g:quicktex_sh = {
			\' '   : "\<ESC>:call search('<++>')\<CR>\"_c/+>/e\<CR>",
			\'ba' : "#!/bin/sh",
			\'f' : "for <+++> in <++>; do\n<++>\ndone;",
			\'if' : "if [ <+++> ];\nthen\n<++>\nfi;",
			\'ca' : "case <+++> in\n<++>) <++>;;\nesac;",
			\}
