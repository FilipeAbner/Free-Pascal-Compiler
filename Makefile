JAVACC=javacc
JAVA=javac
JAVARUN=java

SRC=MyParser.jj
GEN=MyParser.java
INPUT=teste.pas

all: compile run

compile:
	$(JAVACC) $(SRC)
	$(JAVA) *.java

run:
	$(JAVARUN) MyParser < $(INPUT)

clean:
	rm -f *.class *.java *.tokens *.bak
