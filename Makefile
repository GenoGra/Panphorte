CXX := g++
CXXFLAGS := -O3 -march=native -std=c++20 -I./vendor
SRC := src/main.cpp
TARGET := panphorte

.PHONY: all clean rebuild

all: $(TARGET)

$(TARGET): $(SRC)
	$(CXX) $(CXXFLAGS) $(SRC) -o $(TARGET)

clean:
	rm -f $(TARGET)

rebuild: clean all