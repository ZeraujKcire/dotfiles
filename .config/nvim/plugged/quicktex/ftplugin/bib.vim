let g:quicktex_bib = {
    \' '   : "\<ESC>:call search('<++>')\<CR>\"_c/+>/e\<CR>",
    \'art' : "@article{<+++>,\<CR>author={<++>},\<CR>title={<++>},\<CR>journaltitle={<++>},\<CR>year = <++>},\nnote = {<++>},\n}",
    \'mis' : "@misc{<+++>,\<CR>author = {<++>},\<CR>title = {<++>},\<CR>year = {<++>},\<CR>url = {\\url{<++>}},\nnote = {\url{<++>}},\n}",
    \'boo' : "@book{<+++>,\<CR>author = {<++>},\<CR>title = {<++>},\<CR>year = <++>,\<CR>chapter = <++>,\nnote = {<++>},\n}",
    \'www' : "@www{<+++>,\<CR>author = {<++>},\<CR>title = {<++>},\<CR>year = {<++>}\<CR>url = {\\url{<++>}},\nnote = {\url{<++>}},\n}",
    \'th' : "@thesis{<+++>,\<CR>author = {<++>},\<CR>title = {<++>},\<CR>type = {<++>},\<CR>institution = {<++>},\<CR>year = <++>,\nnote = {<++>},\n}",
    \'ele' : "@electronic{<+++>,\<CR>author = {<++>},\<CR>title = {<++>},\<CR>year = <++>,\<CR>organization = {<++>},\nnote = {<++>},\n}",
		\'on' : "@online{<+++>,\ntitle = {<++>},\ndate = {<++>},\norganization = {<++>}, \nauthor = {<++>}, \nurl = {<++>},\nnote = {<++>},\n}",
		\'ur' : "\\url{<+++>} <++>",
\}
