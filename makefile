# makefile for Lisp90
# see http://howtowriteaprogram.blogspot.com/2010/11/lisp-interpreter-in-90-lines-of-c.html

TARGET = lisp90
TEST_TARGET = lisp90test
LIBS = 
CC = clang++
CFLAGS = -std=c++11 -stdlib=libc++ -Wall
SRC_DIR  = .
TEST_DIR = .
INCLUDES = -I$(SRC_DIR)



all: $(TARGET)

test: $(TEST_TARGET)
	./$(TEST_TARGET)

clean:
	rm -f $(TARGET)
	rm -f $(TEST_TARGET)


$(TARGET): $(TEST_DIR)/lisp90.cpp
	$(CC) $(CFLAGS) $(INCLUDES) $< -o $@

$(TEST_TARGET): $(TEST_DIR)/lisp90.cpp
	$(CC) $(CFLAGS) -DLISP90_TEST $(INCLUDES) $< -o $@


