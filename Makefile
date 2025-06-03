JAVACC   = javacc
JAVA     = javac
JAVARUN  = java

SRC        = src/lexical_analyzer.jj
GRAMMAR_SRC = src/grammar.gram
BUILD_DIR  = build
LOG_DIR = $(BUILD_DIR)/logs

OUTPUT_DIR = outputs
OUTPUT_GRAMMAR = outputs/grammar.conf

INPUTS     = $(wildcard tests/test*.pas)
PARSER_JAVA = $(BUILD_DIR)/SimpleCharStream.java

JAVAC_LOG = $(LOG_DIR)/javacc.log
GRAMMAR_LOG = $(LOG_DIR)/grammar.log

.PHONY: all prepare compile run run-file clean

all: prepare compile

prepare:
	@mkdir -p $(BUILD_DIR) $(OUTPUT_DIR) $(LOG_DIR)

$(PARSER_JAVA): $(SRC) | prepare
	@echo "Generating parser..." > $(JAVAC_LOG)
	@$(JAVACC) -OUTPUT_DIRECTORY=$(BUILD_DIR) $(SRC) >> $(JAVAC_LOG) 2>&1 || (echo "Error in parser generator. See $(JAVAC_LOG)"; exit 1)


.PHONY: clean-grammar

clean-grammar:
	@rm -f $(GRAMMAR_LOG)
	@echo "Gerando grammar.conf sem comentários nem linhas em branco..." >> $(GRAMMAR_LOG)
	@sed -E '/^\s*\/\//d' $(GRAMMAR_SRC) | \
	sed -E ':a; /\/\*/{N; s@/\*.*?\*/@@; ba}' | \
	sed "s/''//g" | \
	grep -v '^\s*$$' > $(OUTPUT_GRAMMAR) 2>> $(GRAMMAR_LOG)
	@echo "grammar.conf gerado com sucesso!" >> $(GRAMMAR_LOG)


compile: $(PARSER_JAVA)
	@$(JAVA) -d $(BUILD_DIR) $(BUILD_DIR)/*.java

run: compile
	@for file in $(INPUTS); do \
		base=$$(basename $$file .pas); \
		$(JAVARUN) -cp $(BUILD_DIR) lexical_analyzer $$file || exit 1; \
	done
	@$(MAKE) --no-print-directory clean-grammar

file ?= tests/test3.pas

.PHONY: run-file
run-file: compile
	@$(JAVARUN) -cp $(BUILD_DIR) lexical_analyzer $(file)
	@$(MAKE) --no-print-directory clean-grammar
clean:
	rm -rf $(BUILD_DIR) $(OUTPUT_DIR)


