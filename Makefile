JAVACC=javacc
JAVA=javac
JAVARUN=java

SRC=src/lexical_analyzer.jj
BUILD_DIR=build
INPUTS=$(wildcard tests/test*.pas)

all: prepare compile run

prepare:
	@mkdir -p $(BUILD_DIR)

compile: prepare
	$(JAVACC) -OUTPUT_DIRECTORY=$(BUILD_DIR) $(SRC)
	$(JAVA) -d $(BUILD_DIR) $(BUILD_DIR)/*.java

# Run All files in tests folder
run:
	@echo "\n"
	@for file in $(INPUTS); do \
		filename=$$(basename $$file); \
		echo "====== Testing $$filename ======"; \
		$(JAVARUN) -cp $(BUILD_DIR) lexical_analyzer < $$file || exit 1; \
		echo ""; \
	done

#Run specific files in tests folder
# file ?= tests/test2.pas
# run:
# 	@$(JAVARUN) -cp $(BUILD_DIR) lexical_analyzer < $(file) || exit 1


clean:
	rm -rf $(BUILD_DIR)
