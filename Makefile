CC=gcc
OBJECTS= list.o file.o graphic.o 

essai : $(OBJECTS)
	$(CC) $(OBJECTS) -o essai -lm

list.o : list.c list.h 
	$(CC) -c list.c

file.o : file.c file.h 
	$(CC) -c file.c

graphic.o : graphic.c list.h file.h 
	$(CC) -c graphic.c

graph : graph.tex
	pdflatex graph.tex

ford : ford.tex
	pdflatex ford.tex

edmonds : edmonds.tex 
	pdflatex edmonds.tex

CS : scaling.tex
	pdflatex scaling.tex

dinic : dinic.tex
	pdflatex dinic.tex

rapport : rapport.tex
	pdflatex rapport.tex

clean :
	rm -f *~ *.o *.aux *.log *.out *.nav *.snm *.toc \#*\# essai
