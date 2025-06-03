JAVACC   = javacc
JAVA     = javac
JAVARUN  = java

SRC        = src/lexical_analyzer.jj
BUILD_DIR  = build
OUTPUT_DIR = outputs
LOG_DIR = $(BUILD_DIR)/logs
LOG_FILE = $(LOG_DIR)/javacc.log

INPUTS     = $(wildcard tests/test*.pas)
PARSER_JAVA = $(BUILD_DIR)/SimpleCharStream.java

.PHONY: all prepare compile run run-file clean

all: prepare compile

prepare:
	@mkdir -p $(BUILD_DIR) $(OUTPUT_DIR) $(LOG_DIR)

$(PARSER_JAVA): $(SRC) | prepare
	@echo "Gerando parser..." > $(LOG_FILE)
	@$(JAVACC) -OUTPUT_DIRECTORY=$(BUILD_DIR) $(SRC) >> $(LOG_FILE) 2>&1 || (echo "Erro ao gerar parser. Veja $(LOG_FILE)"; exit 1)

compile: $(PARSER_JAVA)
	@$(JAVA) -d $(BUILD_DIR) $(BUILD_DIR)/*.java

run: compile

	@for file in $(INPUTS); do \
		base=$$(basename $$file .pas); \
		$(JAVARUN) -cp $(BUILD_DIR) lexical_analyzer $$file || exit 1; \
	done

file ?= tests/test3.pas

.PHONY: run-file
run-file: compile
	@$(JAVARUN) -cp $(BUILD_DIR) lexical_analyzer $(file)

clean:
	rm -rf $(BUILD_DIR) $(OUTPUT_DIR)


