CXX = g++

CXXFLAGS = -W -Wall -pedantic -ansi
TARGET = ./bin/main
<<<<<<< HEAD
OBJS = main.o print1.o print2.o print3.o
=======
OBJS = main.o print1.o print2.o
>>>>>>> added echo comments before operations

all: $(TARGET) clean

$(TARGET): $(OBJS)
<<<<<<< HEAD
	@echo "Compilig Binary..."
	@$(CXX) $(CXXFLAGS) -o $@ $(OBJS) 
	@echo "\033[1;32m[OK]\033[0m"
=======
	@echo "Creating Main's binary..."
	@$(CXX) $(CXXFLAGS) -o $@ $(OBJS) 

>>>>>>> added echo comments before operations
%.o: %.cpp
	@echo "Compiling $@ object..."
	@$(CXX) -c $(CXXFLAGS) $< -o $@ 

clean:
	@echo "Removing object files..."
<<<<<<< HEAD
	rm -rf *.o
=======
	@rm -rf *.o
>>>>>>> added echo comments before operations
