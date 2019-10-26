CXX = g++

CXXFLAGS = -W -Wall -pedantic -ansi
TARGET = ./bin/main
OBJS = main.o print1.o print2.o print3.o

all: $(TARGET) clean

$(TARGET): $(OBJS)
	@echo "Compilig Binary..."
	@$(CXX) $(CXXFLAGS) -o $@ $(OBJS) 
	@echo "\033[1;32m[OK]\033[0m"
%.o: %.cpp
	@echo "Compiling $@ object..."
	@$(CXX) -c $(CXXFLAGS) $< -o $@ 

clean:
	@echo "Removing object files..."
	rm -rf *.o
