CXX = g++

CXXFLAGS = -W -Wall -pedantic -ansi
TARGET = ./bin/main
OBJ = main.o print1.o print2.o

all: $(TARGET) clean

$(TARGET): $(OBJ)
	$(CXX) $(CXXFLAGS) -o $@ *.o 

%.o: %.cpp
	$(CXX) -c $(CXXFLAGS) $< -o $@ 

clean:
	rm -rf *.o