FILES = $(SRCS:.s:.o)
SRCS = Colleen/Colleen.s
BIN = Colleen/Colleen

all: $(BIN)

Colleen/Colleen.o: Colleen/Colleen.s
	nasm -f macho64 Colleen/Colleen.s

$(BIN): Colleen/Colleen.o
	ld Colleen/Colleen.o -lSystem -macosx_version_min 12.2 -o Colleen/Colleen

clean:
	@rm -f $(FILES)
	@echo "Done clean"

fclean: clean
	@rm -f Colleen/Colleen Grace Sully
	@echo "Done fclean"

re: fclean all


.PHONY: all fclean clean re
