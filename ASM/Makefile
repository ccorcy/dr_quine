SRCS = Colleen.s
OBJS = $(SRCS:.s=.o)

all: $(OBJS) Colleen

Colleen:
	@ld -macosx_version_min 10.7.0 -e main -lSystem -o Colleen Colleen.o

clean:
	@rm -f $(OBJS)
	@echo "Done clean"

fclean: clean
	@rm -f Colleen Grace Sully
	@echo "Done fclean"

re: fclean all

%.o: %.s
	@nasm -f macho64 $<
	@echo $< " -> " $@

.PHONY: all fclean clean re
