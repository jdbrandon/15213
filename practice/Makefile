cc = gcc
flags = -floop-block --param loop-block-tile-size=4 -O3
targ = ctest
src = cachetest.c
$(targ): cachetest.o
	$(cc) $(flags) -o $(targ) $(src)
ass:
	$(cc) $(flags) -S -c $(src)
all: $(targ) ass
