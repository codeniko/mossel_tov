CFLAGS=-g -Wall -W -Wextra

all: mossel_tov

mossel_tov: mossel_tov.o
	g++ $(CFLAGS) -o mossel_tov mossel_tov.o

mossel_tov.o: mossel_tov.cpp
	g++ $(CFLAGS) -c mossel_tov.cpp

.PHONY: all
.PHONY: clean

clean:
	rm -f mossel_tov mossel_tov.o
