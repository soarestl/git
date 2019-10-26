CXX = g++

CXXFLAGS = -W -Wall -pedantic -ansi
TARGET = print1

all: $(TARGET)

print1: print1.o
	$(CXX) $(CXXFLAGS) -o $@ *.o 

%.o: %.cpp
	$(CXX) -c $(CXXFLAGS) $< -o $@ 

clean:
	rm -rf *.o
	rm -rf $(TARGET)