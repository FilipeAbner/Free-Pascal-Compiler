JAVACC=javacc
JAVA=javac
JAVARUN=java

SRC=src/lexical_analyzer.jj
BUILD_DIR=build
INPUTS=$(wildcard tests/test*.pas)

# Variables configurable via command line
MODE=all             # "all" or "one"
FILE=tests/test2.pas # used when MODE=one

all: prepare compile run

prepare:
	@mkdir -p $(BUILD_DIR)

compile: prepare
	$(JAVACC) -OUTPUT_DIRECTORY=$(BUILD_DIR) $(SRC)
	$(JAVA) -d $(BUILD_DIR) $(BUILD_DIR)/*.java

# Run All files in tests folder
run:
ifeq ($(MODE),all)
	@for file in $(INPUTS); do \
		filename=$$(basename $$file); \
		echo "====== Testing $$filename ======"; \
		$(JAVARUN) -cp $(BUILD_DIR) lexical_analyzer < $$file || exit 1; \
		echo ""; \
	done
else ifeq ($(MODE),one)
	@echo "====== Testing $(FILE) ======"
	@$(JAVARUN) -cp $(BUILD_DIR) lexical_analyzer < $(FILE) || exit 1;
else
	@echo "Invalid MODE. Use MODE=all or (MODE=one FILE=tests/test.pas)"
	@exit 1
endif

#Run specific files in tests folder
# run:
# 	@$(JAVARUN) -cp $(BUILD_DIR) lexical_analyzer < tests/test2.pas || exit 1;


clean:
	rm -rf $(BUILD_DIR)
