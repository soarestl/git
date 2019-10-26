CXX = g++

CXXFLAGS = -W -Wall -pedantic -ansi
TARGET = ./bin/main
OBJS = main.o print1.o print2.o

all: $(TARGET) clean

$(TARGET): $(OBJS)
	@echo "Creating Main's binary..."
	@$(CXX) $(CXXFLAGS) -o $@ $(OBJS) 

%.o: %.cpp
	@echo "Compiling $@ object..."
	@$(CXX) -c $(CXXFLAGS) $< -o $@ 

clean:
	@echo "Removing object files..."
	rm -rf *.o