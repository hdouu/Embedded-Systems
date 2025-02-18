
CC = gcc
CXX = g++
CFLAGS = -Wall 
CXXFLAGS = -Wall
LDFLAGS = -L. -ltempconverter -larithmetic

all: main

main: main.cpp libtempconverter.a libarithmetic.so
	$(CXX) $(CXXFLAGS) -o main main.cpp -L. -Wl,-rpath,. -ltempconverter -larithmetic

libtempconverter.a: temp_converter.o
	ar rcs libtempconverter.a temp_converter.o

temp_converter.o: temp_converter.c temp_converter.h
	$(CC) $(CFLAGS) -c temp_converter.c -o temp_converter.o

libarithmetic.so: arithmetic.o
	$(CXX) -shared -o libarithmetic.so arithmetic.o

arithmetic.o: arithmetic.cpp arithmetic.h
	$(CXX) $(CXXFLAGS) -fPIC -c arithmetic.cpp -o arithmetic.o

clean:
	rm -f *.o *.a *.so main


