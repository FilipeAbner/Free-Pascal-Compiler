JAVACC=javacc
JAVA=javac
JAVARUN=java

SRC=Lexical_Analyzer.jj
GEN=Lexical_Analyzer.java
INPUTS=$(wildcard test*.pas)

all: compile run

compile:
	$(JAVACC) $(SRC)
	$(JAVA) *.java

run:
	@echo "\n"; 
	@for file in $(INPUTS); do \
		echo "====== Testing $$file ======"; \
		$(JAVARUN) Lexical_Analyzer < $$file || exit 1; \
		echo ""; \
	done

clean:
	rm -f *.class *.java *.tokens *.bak
