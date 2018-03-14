CC = g++
CXXFLAGS = -std=c++11 -Wall -Wextra -pedantic

js:
	node playground.js

python:
	python3 playground.py

go:
	go run playground.go

# Cpp config
playground.o: playground.cpp
	$(CC) $(CXXFLAGS) -c -g playground.cpp

cpp_build: playground.o
	$(CC) $(CXXFLAGS) playground.o -o playground.out

cpp: cpp_build
	./playground.out

clean:
	git clean -xdf