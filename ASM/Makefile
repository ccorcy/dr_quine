FILES = Colleen/Colleen.o
SRCS = Colleen/Colleen.s
BIN = Colleen/Colleen

all: $(BIN)

$(BIN):
	nasm -f macho64 $(SRCS)
	ld $(FILES) -lSystem -macosx_version_min 12.2 -o Colleen/Colleen

clean:
	@rm -f $(FILES)
	@echo "Done clean"

fclean: clean
	@rm -f Colleen/Colleen Grace Sully
	@echo "Done fclean"

re: fclean all


.PHONY: all fclean clean re
