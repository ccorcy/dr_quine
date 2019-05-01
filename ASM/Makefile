all: Colleen/Colleen Grace/Grace Sully/Sully

Colleen/Colleen.o: Colleen/Colleen.s
	nasm -f macho64 Colleen/Colleen.s

Grace/Grace.o: Grace/Grace.s
	nasm -f macho64 Grace/Grace.s

Sully/Sully.o: Sully/Sully.s
	nasm -f macho64 Sully/Sully.s

Colleen/Colleen: Colleen/Colleen.o
	ld Colleen/Colleen.o -lSystem -macosx_version_min 12.2 -o Colleen/Colleen
Grace/Grace: Grace/Grace.o
	ld Grace/Grace.o -lSystem -macosx_version_min 12.2 -o Grace/Grace
Sully/Sully: Sully/Sully.o
	ld Sully/Sully.o -lSystem -macosx_version_min 12.2 -o Sully/Sully

clean:
	@rm -f Colleen/Colleen.o Grace/Grace.o Sully/Sully.o
	@echo "Done clean"

fclean: clean
	@rm -f Colleen/Colleen Grace/Grace Sully/Sully
	@rm -f Grace/Grace_kid.s
	@rm -f Sully/Sully_*
	@echo "Done fclean"

re: fclean all


.PHONY: all fclean clean re
