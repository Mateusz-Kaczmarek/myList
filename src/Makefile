CXX = g++
CXXFLAGS = -Wall -g
OBJ = List.o main.o

all: main

main: List.o main.o
	${CXX} ${CXXFLAGS} -o $@ ${OBJ}

List.o: List.cpp
	${CXX} ${CXXFLAGS} -c List.cpp

main.o: main.cpp
	${CXX} ${CXXFLAGS} -c main.cpp

clean:
	rm -rf ${OBJ} main