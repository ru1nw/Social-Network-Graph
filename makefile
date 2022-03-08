CXXFLAGS = -Wall --std=c++17

all: main

main: component.o graph.o graphGenerator.o  main.o
	g++ $(CXXFLAGS) $^ -o $@

component.o: component.cpp component.h
	g++ $(CXXFLAGS) -c component.cpp -o component.o

graph.o: graph.cpp graph.h
	g++ $(CXXFLAGS) -c graph.cpp -o graph.o

graphGenerator.o: graphGenerator.cpp graphGenerator.h
	g++ $(CXXFLAGS) -c graphGenerator.cpp -o graphGenerator.o

main.o: main.cpp
	g++ $(CXXFLAGS) -c main.cpp -o main.o

.PHONY: clean
clean:
	rm *.o main