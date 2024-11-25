CC = clang
CFLAGS = 
LDFLAGS =
RMVFILES = driver.o file1.o file2.o
OBJFILES = driver.o driver.c file1.o file1.c file2.o file2.c
TARGET = makefileAssignment

.PHONY: clean

all : $(TARGET)

$(TARGET): $(OBJFILES)
	$(CC) $(CFLAGS) -o $(TARGET) $(OBJFILES) $(LDFLAGS)

%.o: %.c %.h
	$(CC) -c -o $@ $<

clean:
	rm -f $(RMVFILES) $(TARGET) *~