JAVACC   = javacc
JAVA     = javac
JAVARUN  = java

SRC        = src/lexical_analyzer.jj
BUILD_DIR  = build
OUTPUT_DIR = outputs
INPUTS     = $(wildcard tests/test*.pas)

.PHONY: all prepare compile run run-file clean

all: prepare compile

prepare:
	@mkdir -p $(BUILD_DIR) $(OUTPUT_DIR)

compile: prepare
	@$(JAVACC) -OUTPUT_DIRECTORY=$(BUILD_DIR) $(SRC)
	@$(JAVA) -d $(BUILD_DIR) $(BUILD_DIR)/*.java

run: compile
	@echo ""
	@for file in $(INPUTS); do \
		base=$$(basename $$file .pas); \
		echo "====== Testing $$base.pas ======"; \
		$(JAVARUN) -cp $(BUILD_DIR) lexical_analyzer $$file || exit 1; \
		echo ""; \
	done

file ?= tests/test3.pas

.PHONY: run-file
run-file: compile
	@echo "====== Testing $(notdir $(file)) ======"
	@$(JAVARUN) -cp $(BUILD_DIR) lexical_analyzer $(file)

clean:
	rm -rf $(BUILD_DIR) $(OUTPUT_DIR)


