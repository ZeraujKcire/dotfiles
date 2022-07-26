let g:quicktex_math = {
		\' '   : "\<ESC>:call search('<++>')\<CR>\"_c/+>/e\<CR>",
		\',' : "\\;,\\; ",
		\'0' : "\\varnothing ",
		\':' : "\\;:\\; ",
		\'<' : "\\leqslant ",
		\'>' : "\\geqslant ",
		\'A' : "\\mathcal{A} ",
		\'B' : "\\mathds{B} ",
		\'Big' : "\\Big| <+++> \\Big| <++>",
		\'Bigg' : "\\Bigg| <+++> \\Bigg| <++>",
		\'Bl' : "\\Big| ",
		\'Bll' : "\\Bigg| ",
		\'Br' : "\\left\\{<+++>\\right\\} <++>",
		\'C' : "\\mathds{C} ",
		\'Cu' : "\\Big\\{<+++>\\Big\\} <++>",
		\'Cuu' : "\\Bigg\\{<+++>\\Bigg\\} <++>",
		\'D' : "\\Delta ",
		\'E' : "\\exists ",
		\'F' : "\\Phi ",
		\'G' : "\\Gamma ",
		\'I' : "\\Iota ",
		\'L' : "\\Lambda ",
		\'Lar' : "\\Longleftarrow ",
		\'Lon' : "\\Longrightarrow ",
		\'N' : "\\mathds{N} ",
		\'O' : "\\Omega ",
		\'P' : "\\Pi ",
		\'Pa' : "\\Big(<+++>\\Big) <++>",
		\'Paa' : "\\Bigg(<+++>\\Bigg) <++>",
		\'Q' : "\\mathds{Q} ",
		\'R' : "\\mathds{R} ",
		\'Rar' : "\\Rightarrow ",
		\'S' : "\\Sigma ",
		\'Sb' : "\\Big[<+++>\\Big] <++>",
		\'Sbb' : "\\Bigg[<+++>\\Bigg] <++>",
		\'T' : "\\Theta ",
		\'U' : "\\dis\\bigcup{<+++>}{<++>} ",
		\'V' : "\\forall ",
		\'X' : "\\Xi ",
		\'Y' : "\\Psi ",
		\'Z' : "\\mathds{Z} ",
		\'\delta' : "\\partial ",
		\'\infty' : "\\inf ",
		\'\phi' : "\\varphi ",
		\'\pi' : "\\varpi ",
		\'\theta' : "\\vartheta ",
		\'a' : "\\alpha ",
		\'al' : "\\aleph ",
		\'ale' : "& \\geqslant & <+++> \\\\[6mm]<++>",
		\'ali' : "& \\leqslant & <+++> \\\\[6mm]<++>",
		\'alig' : "\\begin{align}\<CR><+++>\n\\end{align}",
		\'aln' : "& = & <+++> \\\\[2mm]<++>",
		\'an' : "\\;\&\; ",
		\'ang' : "\\langle <+++> \\rangle <++>",
		\'app' : "\\approx ",
		\'arcc' : "\\arccos ",
		\'arcs' : "\\arcsin ",
		\'arct' : "\\arctan ",
		\'arr' : "\\begin{array}{<+++>}\<CR><++>\n\\end{array}",
		\'b' : "\\beta ",
		\'bar' : "\\bar{<+++>} <++>",
		\'bb' : "\\mathbb{<+++>} <++>",
		\'bca' : "\\dis\\bigcap_{<+++>}^{<++>} <++>",
		\'bcu' : "\\dis\\bigcup_{<+++>}^{<++>} <++>",
		\'beg' : "\\begin{<+++>}\\<CR><++>\\n\\\\end{<++>}",
		\'bf' : "\\mathds{<+++>} <++>",
		\'big' : "\\big| <+++> \\big| <++>",
		\'bigg' : "\\bigg| <+++> \\bigg| <++>",
		\'bin' : "\\binom{<+++>} <++>",
		\'bl' : "\\big| ",
		\'bla' : "\\blacksquare ",
		\'bll' : "\\bigg| ",
		\'bm' : "\\begin{bmatrix} <+++> \\end{bmatrix}",
		\'bma' : "\\begin{bmatrix}\n<+++>\n\\end{bmatrix}",
		\'br' : "\\{<+++>\\} <++>",
		\'brl' : "\\left\\{ <+++> \\right.",
		\'brr' : "\\left. <+++> \\right\\}",
		\'bs' : "\\bigskip ",
		\'bx' : "\\boxed ",
		\'c' : "\\chi ",
		\'ca' : "\\cap ",
		\'cal' : "\\mathcal{<+++>} <++>",
		\'can' : "\\cancel{<+++>} <++>",
		\'cant' : "\\cancelto{<+++>}{<++>} <++>",
		\'cas' : "\\begin{cases}\<CR><+++> ,& <++>,\\\\\<CR><++> ,& <++>.\n\\end{cases}",
		\'cd' : "\\cdot ",
		\'cdo' : "\\;\\cdots\\; ",
		\'ci' : "\\circ ",
		\'colo' : "\\color{<+++>} <++>",
		\'cos' : "\\cos ",
		\'cosh' : "\\cosh ",
		\'cot' : "\\cot ",
		\'cs' : "\\csc ",
		\'csc' : "\\csc ",
		\'cu' : "\\cup ",
		\'cur' : "\\big\\{<+++>\\big\\} <++>",
		\'cuu' : "\\bigg\\{<+++>\\bigg\\} <++>",
		\'d' : "\\delta ",
		\'det' : "\\det ",
		\'dfr' : "\\dfrac{<+++>}{<++>} <++>",
		\'di' : "\\dis ",
		\'dim' : "\\dim ",
		\'do' : "\\dot{<+++>} <++>",
		\'dow' : "\\downarrow ",
		\'ds' : "\\mathds{<+++>} <++>",
		\'duo' : "\\left\\{ <+++> \\right\\} <++>",
		\'dy' : "\\dfrac{dy}{dx} ",
		\'e' : "\\varepsilon ",
		\'el' : "\\ell ",
		\'em' : "\\emph{<+++>} <++>",
		\'equi' : "\\equiv ",
		\'esp' : "\\\\[2mm]",
		\'exp' : "\\exp ",
		\'f' : "\\phi ",
		\'fb' : "\\fbox{<+++>} <++>",
		\'fla' : "\\begin{flalign}\<CR><+++>\n\\end{flalign}",
		\'foo' : "\\footnotesize ",
		\'fr' : "\\frac ",
		\'fra' : "\\frac{<+++>}{<++>} <++>",
		\'g' : "\\gamma ",
		\'h' : "\\eta ",
		\'hat' : "\\hat{<+++>} <++>",
		\'hl' : "\\hline ",
		\'hl1' : "\\\\ \\hline\n",
		\'hs' : "\\hspace{<+++>} <++>",
		\'hph' : "\\hphantom{<+++>} <++>",
		\'i' : "\\iota ",
		\'ie' : "\\textit{i.e.} ",
		\'if' : "\\iff ",
		\'imp' : "\\;\\implies\\; ",
		\'in' : "\\in ",
		\'inf' : "\\infty ",
		\'int' : "\\dis\\int <+++>",
		\'inta' : "\\dis\\int\\limits_ ",
		\'inti' : "\\dis\\int\\limits_{-\\infty}^{\\infty} ",
		\'intm' : "\\dis\\int\\limits_{0}^{\\infty} ",
		\'intn' : "\\dis\\int\\limits_{-\\infty}^{0} ",
		\'it' : "\\mathit{<+++>} <++>",
		\'k' : "\\kappa ",
		\'l' : "\\lambda ",
		\'la' : "\\leftarrow ",
		\'lab' : "\\label{eq:<+++>}",
		\'lan' : "\\;\\land\\; ",
		\'ldo' : "\\;\\ldots,\\; ",
		\'lef' : "\\left| <+++> \\right| <++> ",
		\'lim' : "\\dis\\lim_{<+++>\\rightarrow <++>} <++>",
		\'limi' : "\\dis\\liminf_{<+++>\\rightarrow <++>} <++>",
		\'lims' : "\\dis\\limsup_{<+++>\\rightarrow <++>} <++>",
		\'lin' : "\\linewidth ",
		\'ll' : "\\ll ",
		\'ln' : "\\ln ",
		\'lo' : "\\log ",
		\'lon' : "\\longrightarrow ",
		\'lor' : "\\;\\vee\\; ",
		\'lra' : "\\leftrightrrow ",
		\'m' : "\\mu ",
		\'ma' : "\\max ",
		\'mat' : "\\begin{matrix} <+++>\\end{matrix}",
		\'map' : "\\mapsto ",
		\'max' : "\\max ",
		\'mbo' : "\\mbox{<+++>} <++>",
		\'min' : "\\min ",
		\'ms' : "\\medskip ",
		\'n' : "\\ne ",
		\'na' : "\\nabla ",
		\'nf' : "\\inf ",
		\'nor' : "\\lVert <+++> \\rVert <++>",
		\'not' : "\\notin ",
		\'o' : "\\omega ",
		\'oi' : "\\oint ",
		\'ort' : "\\perp ",
		\'oveb' : "\\overbrace{<+++>} <++>",
		\'ovel' : "\\overline{<+++>} <++>",
		\'p' : "\\pi ",
		\'pa' : "\\big(<+++>\\big) <++>",
		\'paa' : "\\bigg(<+++>\\bigg) <++>",
		\'par' : "\\parallel ",
		\'pen' : "\\left[<+++> \\right] <++>",
		\'per' : "\\perp ",
		\'pm' : "\\pm ",
		\'pma' : "\\begin{pmatrix}\<CR><+++>\n\\end{pmatrix}",
		\'pr' : "\\,' ",
		\'pro' : "\\dis\\prod_{<+++>}^{<++>} <++>",
		\'qd' : "\\quad ",
		\'qe' : "\\qed",
		\'qqd' : "\\qquad ",
		\'r' : "\\rho ",
		\'rar' : "\\rightarrow ",
		\'re' : "\\ref{eq:<+++>} <++>",
		\'rm' : "\\mathfm{<+++>} <++>",
		\'s' : "\\sigma ",
		\'sb' : "\\big[<+++>\\big] <++>",
		\'scr' : "\\scriptsize ",
		\'sds' : "\\bigg[<+++>\\bigg] <++>",
		\'sec' : "\\sec ",
		\'sf' : "\\mathsf{<+++>} <++>",
		\'sim' : "\\sim ",
		\'sinh' : "\\sinh ",
		\'sin' : "\\sin ",
		\'sm' : "\\setminus ",
		\'sma' : "\\small ",
		\'sq' : "\\sqrt{<+++>} <++>",
		\'sq1' : "\\sqrt[<+++>]{<++>} <++>",
		\'squ' : "\\square ",
		\'ss' : "\\smallskip ",
		\'sta' : "\\stackrel{<+++>}{<++>} <++>",
		\'sta1' : "\\stackrel{(\\ref{eq:<+++>})}{<++>} <++>",
		\'sub' : "\\subseteq ",
		\'sum' : "\\dis\\sum_{<+++>}^{<++>} <++>",
		\'suma' : "\\dis\\suma_{<+++>}^{<++>} <++>",
		\'sup' : "\\sup ",
		\'sups' : "\\supseteq ",
		\'t' : "\\tau ",
		\'tan' : "\\tan ",
		\'textc' : "\\textcolor{<+++>}{<++>} <++>",
		\'th' : "\\theta ",
		\'the' : "\\therefore ",
		\'til' : "\\tilde{<+++>} <++>",
		\'tim' : "\\times ",
		\'tri' : "\\triangle ",
		\'u' : "\\upsilon ",
		\'undb' : "\\underbrace{<+++>} <++>",
		\'undl' : "\\underline{<+++>} <++>",
		\'up' : "\\uparrow ",
		\'v' : "\\nu ",
		\'va' : "\\varenothing ",
		\'var' : "\\var ",
		\'vag' : "\\left(<+++> \\right) <++>",
		\'vdo' : "\\vdots ",
		\'ve' : "\\vee ",
		\'ver' : "\\lVert <+++> \\rVert <++>",
		\'vf' : "\\varphi ",
		\'vma' : "\\begin{vmatrix}\<CR><+++>\n\\end{vmatrix}",
		\'vs' : "\\vspace{<+++>} <++>",
		\'w' : "\\omega ",
		\'wid' : "\\widehat{<+++>} <++>",
		\'x' : "\\xi ",
		\'xr' : "\\xrightarrow[<+++>]{} <++>",
		\'y' : "\\psi ",
		\'z' : "\\zeta ",
		\'|' : "\\;|\\; ",
\}
