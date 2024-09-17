CFLAGS = -Wall -Wextra -ggdb

SRCS = $(wildcard *.c)

BUILD_DIR = build
OBJS = $(patsubst %.c,$(BUILD_DIR)/%.o,$(SRCS))
TARGET = $(BUILD_DIR)/clox

all: $(BUILD_DIR) $(TARGET)

$(BUILD_DIR):
	mkdir -p $(BUILD_DIR)

$(TARGET): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^

$(BUILD_DIR)/%.o: %.c | $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

install: $(TARGET)
	@mv $(TARGET) $(HOME)/.local/bin/
	@echo "install clox successfully"

test-update: $(TARGET)
	./tests/rere.py record ./tests/test.list

test: $(TARGET)
	./tests/rere.py replay ./tests/test.list

uninstall:
	@rm -f $(HOME)/.local/bin/clox

clean:
	@rm -rf $(BUILD_DIR)

.PHONY: all clean install
