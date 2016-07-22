all: opus

opus: main.o
	g++ -o $@ main.o
