let g:quicktex_tex = {
		\' '   : "\<ESC>:call search('<++>')\<CR>\"_c/+>/e\<CR>",
		\'@' : "@{<+++>} <++>",
		\'%' : "\\textsc{\\%} ",
		\'E' : "E.D. ",
		\'P' : "P.V.I. ",
		\'L' : "L.I. ",
		\'C' : "C.I. ",
		\'ab' : "above ",
		\'ad' : "\\addcontentsline{toc}{<+++>}{<++>}",
		\'add' : "\\addfontfeature{LetterSpace = -5}",
		\'al' : "\\alert{<+++>} <++>",
		\'ale' : "\\begin{alertblock}{}\<CR><+++>\n\\end{alertblock}",
		\'aleb' : "\\begin{alertblock}{<+++>}\<CR><++>\n\\end{alertblock}",
		\'ali' : "\\begin{align*}\<CR><+++>\n\\end{align*}",
		\'alg' : "\\begin{algorithm}[hbtp!]\<CR><+++>\n\\end{algorithm}",
		\'alt' : "\\alt<<+++>>{<++>}{<++>} <++>",
		\'angu' : "\\def\\x{<+++>} % angulo inicial\n\\def\\w{<++>} % angulo final\n\\def\\y{<++>} % separación del punto\n\\draw (<++>)++(\\x:\\y) arc (\\x:\\w: \\y);",
		\'ar' : "\\tikz [->] \\draw (0,0) to node [above] {<+++>} (<++>); <++>",
		\'arr' : "-{Stealth[round]} ",
		\'arc' : "(<+++>) arc (<++>:<++>: <++> cm) <++>",
		\'arc1' : "(<+++>) arc (<++>:<++>: <++> cm and <++> cm) <++>",
		\'ax' : "\\textbf{Axioma.} ",
		\'bas' : "basicstyle = ",
		\'be' : "below ",
		\'beg' : "\\begin{<+++>}\<CR><++>\n\\end{<++>}",
		\'bf' : "\\textbf{<+++>} <++>",
		\'bl' : "black ",
		\'blo' : "\\begin{block}{<+++>}\<CR><++>\n\\end{block}",
		\'bib' : "% === REFERENCIAS === (((\n% \\bibliography{Referencias}\n% \\bibliographystyle{unsrt}\n% )))",
		\'bibb' : "% === REFERENCIAS === (((\n% \\begin{frame}[t,allowframebreaks]\<CR>% \\frametitle{Referencias.}\n% \\bibliography{Referencias}\n% \\beamerdefaultoverlayspecification{}\n% \\bibliographystyle{unsrt}\n% \\end{frame}\n% )))\n",
		\'bloe' : "\\begin{block}{\\vspace*{-2ex}}\<CR><+++>\n\\end{block}",
		\'blu' : "blue ",
		\'bo' : "\\bookmark{<+++>}",
		\'c' : "*{<+++>}{<++>} <++>",
		\'cap' : "\\caption{<+++>} <++>",
		\'capo' : "\\captionof{figure}{<+++>} <++>",
		\'cen' : "\\begin{center}\<CR><+++>\n\\end{center}",
		\'cent' : "\\centering ",
		\'cel' : "\\cellcolor{<+++>}{<++>} <++>",
		\'chi' : "child [<+++>] { node[<++>] {<++>} }",
		\'chi1' : "child [<+++>] {\nnode[<++>] {<++>}\n[clockwise from=<++>]\n<++>\n}",
		\'cur' : "\\currentname ",
		\'cha' : "\\chapter{<+++>} %(((\n<++>\n% )))",
		\'cir' : "(<+++>) circle (<++>);",
		\'cit' : "\\cite{<+++>} <++>",
		\'cl' : "\\cline{<+++>} <++>",
		\'cl1' : "\\\\ \\cline{<+++>} <++>",
		\'cli' : "\\clip ",
		\'cod' : "\\codigo{<+++>} <++>",
		\'col' : "\\begin{columns}[t]\<CR>\\column{0.<+++>\\textwidth}\n<++>\n\\column{0.<++>\\textwidth}\n<++>\n\\end{columns}",
		\'com' : "\\begin{comment}\<CR><+++>\n\\end{comment}",
		\'cole' : "\\colorlet{<+++>}{<++>};",
		\'colo' : "\\color{<+++>} <++>",
		\'colu' : "\\begin{columns}\<CR>\\begin{column}{<+++>\\linewidth}\n<++>\\end{column}\\begin{column}{<++>\\linewidth}\n<++>\n\\end{column}\n\\end{columns}",
		\'coo' : "\\coordinate (<+++>) at (<++>);",
		\'cor' : "\\textbf{Corolario.} ",
		\'coro' : "\\begin{corollary}\<CR><+++>\n\\end{corollary}",
		\'cy' : "cycle;",
		\'das' : "dashed ",
		\'dap' : "dash pattern = on <+++>pt off <++>pt <++>",
		\'de' : "\\def\\<+++>{<++>}",
		\'def' : "\\textbf{Definition.} ",
		\'defi' : "\\begin{definition}\<CR><+++>\n\\end{definition}",
		\'dem' : "\\textbf{Demostración.} ",
		\'demb' : "% \\pause\n\\textbf{Demostración.}\n% \\pause",
		\'des' : "\\begin{description}\n\\item <+++>\n\\end{description}",
		\'dom' : "domain=",
		\'dot' : "dotted ",
		\'dr' : "\\draw ",
		\'dr1' : "\\draw [<+++>] <++>",
		\'ejm' : "\\textbf{Ejemplo.} ",
		\'ejr' : "\\textbf{Ejercicio.} ",
		\'eli' : "(<+++>) ellipse (<++> cm and <++> cm);",
		\'em' : "\\emph{<+++>} <++>",
		\'enu' : "\\begin{enumerate}\<CR>\\item <+++>\n\\end{enumerate}",
		\'enu1' : "\\begin{enumerate}\<CR>\\item[<+++>] <++>\n\\end{enumerate}",
		\'en' : "\\begin{<+++>} <++> \\end{<++>} <++>",
		\'env' : "\\begin{<+++>}\<CR><++>\n\\end{<++>}",
		\'eq' : "\\[\<CR><+++>\n\\]",
		\'equ' : "\\begin{equation}\n<+++>\n\\label{eq:<++>}\n\\end{equation}",
		\'es' : "\\\\ ",
		\'esp' : "\\\\[2mm]\n",
		\'espa' : "\\\\\n% \\pause\n",
		\'ex' : "\\item[<+++>.] \\textit{<++>} \\\\[2mm]\n\\textbf{Demostración.}\n<++>",
		\'exa' : "\\begin{example}\<CR><+++>\n\\end{example}",
		\'exam' : "\\begin{block}{\\vspace*{-3ex}}\<CR><+++>\n\\end{block}\n\\vspace{2mm}",
		\'fb' : "\\fbox{<+++>} <++>",
		\'fbo' : "\\noindent\\fbox{\\parbox{0.95\\linewidth}{<+++> }}\\\\[3mm]",
		\'fd' : "\\filldraw ",
		\'fi' : "\\fill ",
		\'fi1' : "\\fill [<+++>] <++>",
		\'fig1' : "\\begin{figure}[hbtp!]\<CR>\\centering\n\\includegraphics[width= <+++> \\linewidth]{IMAGENES/<++>}\n\\caption{<++>}\n\\label{fig:<++>}\n\\end{figure}\\\\",
		\'fig' : "\\begin{figure}[hbtp!]\<CR>\\centering\n\\includegraphics[width= <+++> \\linewidth, page = 1]{IMAGENES/<++>/tikz.pdf}\n\\end{figure}",
		\'figb' : "\\begin{figure}[hbtp!]\<CR>\\centering\n\\begin{overprint}\n\\includegraphics[width= <+++> \\linewidth, page = 1]{IMAGENES/<++>/tikz.pdf}\n\end{overprint}\n\\end{figure}",
		\'fil' : "fill = ",
		\'flul' : "\\begin{flushleft}\<CR><+++>\n\\end{flushleft}",
		\'flur' : "\\begin{flushright}\<CR><+++>\n\\end{flushright}",
		\'foo' : "\\footnotesize ",
		\'for' : "\\foreach \\n in {1,...,<+++>} <++>",
		\'fr' : "\\begin{frame}[t]\n\\frametitle{\\currentname}\n<+++>\n\\end{frame}",
		\'gra' : "gray ",
		\'gre' : "green ",
		\'gri' : "(<+++>) grid (<++>) <++>",
		\'he' : "help lines ",
		\'hdas' : "\\hdashline ",
		\'hl' : "\\hline ",
		\'hl1' : "\\\\ \\hline\n",
		\'hph' : "\\hphantom{<+++>} <++>",
		\'hu' : "\\huge ",
		\'Hu' : "\\Huge ",
		\'hs' : "\\hspace{<+++>} <++>",
		\'hsk' : "\\hskip ",
		\'i' : "\\item ",
		\'i1' : "\\item[<+++>] <++>",
		\'i2' : "% === <+++> ===(((\n\\item <++>\n% )))",
		\'ie' : "\\textit{i.e.} ",
		\'in' : "\\input{<+++>.tex}",
		\'inc' : "\\includegraphics[width= <+++> \\linewidth, page = 1]{IMAGENES/<++>/tikz.pdf}",
		\'inc1' : "\\includegraphics[width= <+++> \\linewidth, page = 1]{IMAGENES/<++>/<++>}",
		\'inv' : "\\invisible<<+++>> <++>",
		\'it' : "\\textit{<+++>} <++>",
		\'it1' : "\\textit{<+++>}\\\\[2mm] <++>",
		\'ite' : "\\begin{itemize}\<CR>\\item <+++>\n\\end{itemize}",
		\'l1' : "-- (<+++>) <++>",
		\'l2' : "--++ (<+++>) <++>",
		\'lab' : "\\label{<+++>:<++>}",
		\'lar' : "\\large ",
		\'le' : "left ",
		\'lem' : "\\textbf{Lema.} ",
		\'li' : "(<+++>) -- (<++>) <++>",
		\'lin' : "(<+++>) --++ (<++>) <++>",
		\'line' : "\\linewidth ",
		\'lin1' : "(<+++>) to node [<++>] {<++>} (<++>) <++>",
		\'lit' : "(<+++>) to [out=<++> , in=<++>] (<++>) <++>",
		\'lst' : "\\begin{lstlisting}[<+++>]\<CR><++>\n\\end{lstlisting}",
		\'lst1' : "\\begin{lstlisting}[backgroundcolor=\\color{gray!20}]\<CR><+++>\n\\end{lstlisting}",
		\'lsti' : "\\lstinputlisting[language=<+++>]{<++>} <++>",
		\'m' : "\\(<+++>\\) <++>",
		\'ma' : "margin = <+++>in",
		\'mar' : "margin = <+++>in",
		\'mag' : "magenta ",
		\'mat' : "\\matrix{<+++>} <++>",
		\'mic' : "\\micita{<+++>} <++>",
		\'mid' : "midway, ",
		\'min' : "\\begin{minipage}{<+++>\\linewidth}\<CR><++>\n\\end{minipage}",
		\'mulr' : "\\multirow{<+++>}{*}{<++>} <++>",
		\'mulc' : "\\multicolumn{<+++>}{<++>}{<++>} <++>",
		\'newc' : "\\newcommand{<+++>}{<++>}",
		\'newc1' : "\\newcommand{<+++>}[<++>]{<++>}",
		\'newl' : "\\newline ",
		\'newp' : "\\newpage",
		\'newt' : "\\newtheorem{<+++>}{<++>}",
		\'no' : "node [<+++>] {<++>} <++>",
		\'nod' : "\\node at (<+++>) {<++>};",
		\'nod1' : "\\node [<+++>] at (<++>) {<++>};",
		\'noi' : "noitemsep ",
		\'noin' : "\\noindent ",
		\'obs' : "\\textbf{Observación.} ",
		\'on' : "\\only<<+++>> <++>",
		\'ons' : "\\onslide<<+++>>\n<++>",
		\'opa' : "opacity=",
		\'ove' : "\\begin{overprint}\<CR><+++>\n\\end{overprint}",
		\'or' : "orange ",
		\'p' : "p{<+++>} <++>",
		\'pa' : "\n% \\pause\n",
		\'pagb' : "\\pagebreak\n",
		\'par' : "(<+++>) parabola (<++>) <++>",
		\'parb' : "(<+++>) parabola bend (<++>) (<++>) <++>",
		\'pat' : "\\path ",
		\'pd' : "\\textbf{\\underline{\\underline{P.D.}}} <+++> \\\\[2mm]\n<++>",
		\'plo' : "plot(\\x , {<+++>});",
		\'pr' : "\\begin{proof}\<CR><+++>\n\\end{proof}",
		\'q' : "``<+++>'' <++>",
		\'qe' : "\\qed",
		\'qu' : "\\begin{quote}\<CR><+++>\n\\end{quote}",
		\'r' : "red ",
		\'re' : "\\ref{<+++>:<++>} <++>",
		\'ref' : "\\eqref{eq:<+++>} <++>",
		\'rec' : "(<+++>) rectangle (<++>);",
		\'rec1' : "(<+++>) rectangle ++(<++>);",
		\'req' : "(\\eqref{eq:<+++>}) <++>",
		\'ren' : "\\renewcommand{<+++>}{<++>}",
		\'ri' : "right ",
		\'rot' : "rotate=",
		\'roun' : "rounded corners=",
		\'row' : "\\rowcolor{<+++>} <++>",
		\'sam' : "samples = ",
		\'sc' : "\\textsc{<+++>} <++>",
		\'sca' : "scale=",
		\'scr' : "\\scriptsize ",
		\'sco' : "\\begin{scope}[<+++>]\<CR><++>\n\\end{scope}",
		\'se' : "sec ",
		\'sec' : "\\section{<+++>} % (((\n<++>\n% )))",
		\'secb' : "\\section{<+++>} % (((\n\\frame{\\sectionpage}\n\\begin{frame}\\frametitle{\\currentname}\<CR><++>\n\\end{frame}\n% )))",
		\'sec1' : "% === <+++> === (((\n<++>\n% )))",
		\'secf' : "\\frame{\\sectionpage}",
		\'sep' : "\\begin{minipage}{0.5\\linewidth}\<CR><+++>\n\\end{minipage}\\hspace{5mm}\<CR>\\begin{minipage}{0.5\\linewidth}\<CR><++>\n\\end{minipage}",
		\'sep1' : "\\begin{figure}[hbtp!]\<CR>\\begin{minipage}{0.5\\linewidth}\<CR><+++>\n\\end{minipage}\\hspace{5mm}\<CR>\\begin{minipage}{0.5\\linewidth}\<CR><++>\n\\end{minipage}\n\\end{figure}",
		\'setc' : "\\setcounter{enumi}{<+++>} <++>",
		\'setl' : "\\setlength{<+++>}{<++>} <++>",
		\'sha' : "\\shade[<+++>] ",
		\'shb' : "\\shadowbox{<+++>} <++>",
		\'shi' : "shift={(<+++>)} <++>",
		\'sma' : "\\small ",
		\'smo' : "plot [smooth cycle] coordinates{(<+++>) <++>};",
		\'sol' : "\\textbf{Solución.} ",
		\'sp' : "\\begin{split}\<CR><+++>\n\\end{split}",
		\'su' : "sub ",
		\'sub' : "\\subsection{--- <+++> ---} % (((\n\\label{sub:<++>}\n<++>\n% )))",
		\'subb' : "\\subsection{--- <+++> ---} % (((\n\\begin{frame}\n\\frametitle{\\currentname}\n<++>\n\\end{frame}\n% )))",
		\'subs' : "\\subsubsection{<+++>} % (((\n\\label{subs:<++>}\n<++>\n% )))\n",
		\'tab' : "\\begin{table}[hbtp!]\<CR>\\centering\n\\begin{tabular}{<+++>}\<CR><++>\n\\end{tabular}\n\\label{tab:<++>}\n\\end{table}",
		\'tabb' : "\\centering\n\\begin{tabular}{<+++>}\<CR><++>\n\\end{tabular}",
		\'tabu' : "\\begin{tabular}{<+++>}\<CR><++>\n\\end{tabular}",
		\'tc' : "\\textcolor{<+++>}{<++>} <++>",
		\'tem' : "\\temporal<<+++>>{<++>}{<++>}{<++>} <++>",
		\'teo' : "\\textbf{Theorem.} ",
		\'thi' : "thick ",
		\'thm' : "\\begin{theorem}\<CR><+++>\n\\end{theorem}",
		\'ti' : "\\title{<+++>}",
		\'tik' : "\\begin{figure}[hbtp!]\<CR>\\centering\n\\begin{tikzpicture}[>=latex]\<CR>\\draw <+++>\n\\end{tikzpicture}\n\\end{figure}",
		\'tikc' : "\\begin{figure}[hbtp!]\<CR>\\centering\n\\begin{tikzpicture}[>={Latex[round,width=<+++>mm,length=<++>mm]}]\<CR>\\draw <++>\n\\end{tikzpicture}\n\\end{figure}",
		\'tik1' : "\\begin{tikzpicture}[>=latex]\<CR>\\draw <+++>\n\\end{tikzpicture}",
		\'tikc1' : "\\begin{tikzpicture}[>={Latex[round,width=<+++>mm,length=<++>mm]}]\<CR>\\draw <++>\n\\end{tikzpicture}",
		\'tin' : "\\tiny ",
		\'tit' : "\\frametitle{<+++>}",
		\'titc' : "\\frametitle{\\currentname}",
		\'tits' : "\\frametitle{\\currentname}",
		\'to' : "to node[<+++>] {<++>} <++>",
		\'toc' : "\\tableofcontents ",
		\'tri' : "(<+++>) -- (<++>) -- (<++>) -- cycle;",
		\'tri1' : "(<+++>) --++ (<++>) --++ (<++>) -- cycle;",
		\'tt' : "\\texttt{<+++>} <++>",
		\'ttf' : "\\ttfamily ",
		\'un' : "\\uncover<<+++>> <++>",
		\'undl' : "\\underline{<+++>} <++>",
		\'ur' : "\\url{<+++>}",
		\'use' : "\\usepackage{<+++>}",
		\'use1' : "\\usepackage[<+++>]{<++>}",
		\'uset' : "\\usetikzlibrary{<+++>}",
		\'var' : "variables separables ",
		\'ve' : "\\verb|<+++>| <++>",
		\'ver' : "\\begin{verbatim}\<CR><+++>\n\\end{verbatim}",
		\'vfi' : "\\vfill ",
		\'vf' : "\\vfill ",
		\'vi' : "\\visible<<+++>> <++>",
		\'vph' : "\\vphantom{<+++>} <++>",
		\'vs' : "\\vspace{<+++>} <++>",
		\'vsk' : "\\vskip<+++>mm <++>",
		\'wh' : "white ",
		\'xsc' : "xscale=",
		\'xsh' : "xshift=<+++>cm <++>",
		\'ye' : "yellow ",
		\'ysc' : "yscale=",
		\'ysh' : "yshift=<+++>cm <++>",
	 	\'Lar' : "\\Large ",
	 	\'LA' : "\\LARGE ",
\}

let g:quicktex_math = {
		\' '   : "\<ESC>:call search('<++>')\<CR>\"_c/+>/e\<CR>",
		\"'" : "\\,' ",
		\',' : "\\;,\\; ",
		\'0' : "\\varnothing ",
		\':' : "\\;:\\; ",
		\'<' : "\\leqslant ",
		\'>' : "\\geqslant ",
		\'A' : "\\mathcal{A} ",
		\'B' : "\\mathbb{B} ",
		\'Big' : "\\Big| <+++> \\Big| <++>",
		\'Bigg' : "\\Bigg| <+++> \\Bigg| <++>",
		\'Bl' : "\\Big| ",
		\'Bll' : "\\Bigg| ",
		\'Br' : "\\left\\{<+++>\\right\\} <++>",
		\'C' : "\\mathbb{C} ",
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
		\'N' : "\\mathbb{N} ",
		\'O' : "\\Omega ",
		\'P' : "\\Pi ",
		\'Pa' : "\\Big(<+++>\\Big) <++>",
		\'Paa' : "\\Bigg(<+++>\\Bigg) <++>",
		\'Q' : "\\mathbb{Q} ",
		\'R' : "\\mathbb{R} ",
		\'Rar' : "\\Rightarrow ",
		\'S' : "\\Sigma ",
		\'Sb' : "\\Big[<+++>\\Big] <++>",
		\'Sbb' : "\\Bigg[<+++>\\Bigg] <++>",
		\'T' : "\\Theta ",
		\'U' : "\\dis\\bigcup{<+++>}{<++>} ",
		\'V' : "\\forall ",
		\'X' : "\\Xi ",
		\'Y' : "\\Psi ",
		\'Z' : "\\mathbb{Z} ",
		\'\delta' : "\\partial ",
		\'\phi' : "\\varphi ",
		\'\pi' : "\\varpi ",
		\'\theta' : "\\vartheta ",
		\'a' : "\\alpha ",
		\'al' : "\\aleph ",
		\'ale' : "& \\geqslant & <+++> \\\\[2mm]<++>",
		\'ali' : "& \\leqslant & <+++> \\\\[2mm]<++>",
		\'alim' : "& \\;\\implies\\; & <+++> \\\\[2mm]<++>",
		\'alif' : "& \\iff & <+++> \\\\[2mm]<++>",
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
		\'bf' : "\\mathbb{<+++>} <++>",
		\'big' : "\\big| <+++> \\big| <++>",
		\'bigg' : "\\bigg| <+++> \\bigg| <++>",
		\'bin' : "\\binom{<+++>}{<++>} <++>",
		\'bl' : "\\big| ",
		\'bla' : "\\blacksquare ",
		\'bll' : "\\bigg| ",
		\'bm' : "\\begin{bmatrix} <+++> \\end{bmatrix}",
		\'bma' : "\\begin{bmatrix}\n<+++>\n\\end{bmatrix}",
		\'br' : "\\{<+++>\\} <++>",
		\'brl' : "\\left\\{ <+++> \\right.",
		\'brr' : "\\left. <+++> \\right\\}",
		\'bs' : "\\bigskip ",
		\'bsl' : "\\left. <+++> \\middle/ <++> \\right. <++>",
		\'bx' : "\\boxed ",
		\'c' : "\\chi ",
		\'ca' : "\\cap ",
		\'cal' : "\\mathscr{<+++>} <++>",
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
		\'ddo' : "\\ddots ",
		\'det' : "\\det ",
		\'dfr' : "\\dfrac{<+++>}{<++>} <++>",
		\'di' : "\\dis ",
		\'dim' : "\\dim ",
		\'do' : "\\dot{<+++>} <++>",
		\'dow' : "\\downarrow ",
		\'ds' : "\\mathbb{<+++>} <++>",
		\'duo' : "\\left\\{ <+++> \\right\\} <++>",
		\'dy' : "\\dfrac{dy}{dx} ",
		\'e' : "\\varepsilon ",
		\'el' : "\\ell ",
		\'em' : "\\emph{<+++>} <++>",
		\'equi' : "\\equiv ",
		\'es' : "\\\\ ",
		\'esp' : "\\\\[2mm]",
		\'espa' : "\\\\\n% \\pause\n",
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
		\'hph' : "\\hphantom{<+++>} <++>",
		\'hs' : "\\hspace{<+++>} <++>",
		\'i' : "\\iota ",
		\'ie' : "\\textit{i.e.} ",
		\'if' : "\\iff ",
		\'imp' : "\\;\\implies\\; ",
		\'in' : "\\in ",
		\'inf' : "\\infty ",
		\'int' : "\\dis\\int <+++>",
		\'inta' : "\\dis\\int\\limits_ ",
		\'inti' : "\\dis\\int\\limits_{-\\infty}^{\\infty} ",
		\'intm' : "\\dis\\int_{0}^{\\infty} ",
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
		\'map' : "\\mapsto ",
		\'mat' : "\\begin{matrix} <+++>\\end{matrix}",
		\'max' : "\\max ",
		\'mbo' : "\\mbox{<+++>} <++>",
		\'mea' : "\\measuredangle{<+++>} <++>",
		\'min' : "\\min ",
		\'ms' : "\\medskip ",
		\'n' : "\\ne ",
		\'na' : "\\nabla ",
		\'ne' : "\\neq ",
		\'neq' : "\\neq ",
		\'newc' : "\\newcommand{<+++>}{<++>}",
		\'nf' : "\\inf ",
		\'ni' : "\\dis\\inf ",
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
		\'pau' : "\n% \\pause\n",
		\'per' : "\\perp ",
		\'pm' : "\\pm ",
		\'pma' : "\\begin{pmatrix}\<CR><+++>\n\\end{pmatrix}",
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
		\'sc' : "\\mathscr{<+++>} <++>",
		\'scr' : "\\scriptsize ",
		\'sds' : "\\bigg[<+++>\\bigg] <++>",
		\'sec' : "\\sec ",
		\'sf' : "\\mathsf{<+++>} <++>",
		\'sim' : "\\sim ",
		\'sin' : "\\sin ",
		\'sinh' : "\\sinh ",
		\'sm' : "\\setminus ",
		\'sma' : "\\small ",
		\'sq' : "\\sqrt{<+++>} <++>",
		\'sq1' : "\\sqrt[<+++>]{<++>} <++>",
		\'squ' : "\\square ",
		\'ss' : "\\smallskip ",
		\'sta' : "\\stackrel{<+++>}{<++>} <++>",
		\'sta1' : "\\stackrel{(\\ref{eq:<+++>})}{<++>} <++>",
		\'sub' : "\\subseteq ",
		\'subs' : "\\substack{<+++>} <++>",
		\'sug' : "\\unlhd ",
		\'unl' : "\\unlhd ",
		\'sum' : "\\dis\\sum_{<+++>}^{<++>} <++>",
		\'suma' : "\\dis\\suma_{<+++>}^{<++>} <++>",
		\'sup' : "\\dis\\sup ",
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
		\'vag' : "\\left(<+++> \\right) <++>",
		\'var' : "\\var ",
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
