CFLAGS = -Wall -Wextra -g

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

clean:
	rm -rf $(BUILD_DIR)

.PHONY: all clean
