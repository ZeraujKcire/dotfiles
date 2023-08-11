#!/bin/bash

for line1 in $(cat colors1.txt); do
	mkdir $line1/;
	cd $line1/;
	for line2 in $(cat ../colors2.txt); do
		mkdir $line2/;
		cd $line2/;
		file=$(echo $line1"_"$line2".tex");
		touch $file; 
		cat ../../tikz1.tex >> $file;
		echo -e "\\shade [ left color  = "$line1"!70!black, right color = "$line2"!70!black, shading angle = 135 ] (0,0) rectangle (4,3);" >> $file;
		cat ../../tikz2.tex >> $file;
		pdflatex $file || exit 1;
		cd ..;
	done;
	cd ..;
done;
