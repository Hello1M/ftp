CC=gcc
CFLAG=-Wall -g
BIN=mainftp
SRC=$(wildcard ./*.c)
OBJ=$(patsubst %.c, %.o, $(SRC))
LFLAG=-L ../lib -pathread -lzlog -lconfig

%.o:%.c
	$(CC) -c  $<  -o $@ $(CFLAG)

$(BIN):$(OBJ)
	$(CC) $^ -o $@ 

clean:
	rm -rf *.o $(BIN)
