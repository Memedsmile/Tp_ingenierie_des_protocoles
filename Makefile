all : TP_IP.tex
	pdflatex TP_IP.tex

clean :
	rm -f *~ *.o *.aux *.log *.out *.nav *.snm *.toc \#*\# essai
