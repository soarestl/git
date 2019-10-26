CXX = g++

CXXFLAGS = -W -Wall -pedantic -ansi
TARGET = ./bin/main
<<<<<<< HEAD
OBJS = main.o print1.o print2.o print3.o

all: $(TARGET) clean
=======
OBJS = main.o print1.o print2.o

all: $(TARGET) clean

$(TARGET): $(OBJS)
	@echo "Creating Main's binary..."
	@$(CXX) $(CXXFLAGS) -o $@ $(OBJS) 
>>>>>>> 4702894b5731811529d3fd92941c950a9453bba8

$(TARGET): $(OBJS)
	@echo "Compilig Binary..."
	@$(CXX) $(CXXFLAGS) -o $@ $(OBJS) 
	@echo "\033[1;32m[OK]\033[0m"
%.o: %.cpp
	@echo "Compiling $@ object..."
	@$(CXX) -c $(CXXFLAGS) $< -o $@ 

clean:
	@echo "Removing object files..."
<<<<<<< HEAD
	rm -rf *.o
=======
	rm -rf *.o
>>>>>>> 4702894b5731811529d3fd92941c950a9453bba8
