SRCS = Colleen.s
OBJS = $(SRCS:.s=.o)

all: $(OBJS) Colleen

Colleen: Colleen.o
	ld Colleen.o -e main -macosx_version_min 10.8 -lSystem -o $@

clean:
	@rm -f $(OBJS)
	@echo "Done clean"

fclean: clean
	@rm -f Colleen Grace Sully
	@echo "Done fclean"

re: fclean all

%.o: %.s
	nasm -f macho64 $<
	@echo $< " -> " $@

.PHONY: all fclean clean re
