SRCS = Colleen/Colleen.s Grace/Grace.s

all: Colleen/Colleen Grace/Grace

Colleen/Colleen.o: Colleen/Colleen.s
	nasm -f macho64 Colleen/Colleen.s

Grace/Grace.o: Grace/Grace.s
	nasm -f macho64 Grace/Grace.s

Colleen/Colleen: Colleen/Colleen.o
	ld Colleen/Colleen.o -lSystem -macosx_version_min 12.2 -o Colleen/Colleen
Grace/Grace: Grace/Grace.o
	ld Grace/Grace.o -lSystem -macosx_version_min 12.2 -o Grace/Grace

clean:
	@rm -f Colleen/Colleen.o Grace/Grace.o
	@echo "Done clean"

fclean: clean
	@rm -f Colleen/Colleen Grace/Grace Sully/Sully
	@rm -f Grace/Grace_kid.s
	@echo "Done fclean"

re: fclean all


.PHONY: all fclean clean re
