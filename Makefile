JAVACC=javacc
JAVA=javac
JAVARUN=java

SRC=Lexical_Analyzer.jj
GEN=Lexical_Analyzer.java
INPUT=teste.pas

all: compile run

compile:
	$(JAVACC) $(SRC)
	$(JAVA) *.java

run:
	$(JAVARUN) Lexical_Analyzer < $(INPUT)

clean:
	rm -f *.class *.java *.tokens *.bak
