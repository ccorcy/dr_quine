# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ccorcy <ccorcy@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/27 20:32:28 by ccorcy            #+#    #+#              #
#    Updated: 2019/04/29 14:57:20 by ccorcy           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = -Wall -Wextra -Werror

SRCS = Colleen.c Grace.c Sully.c
OBJS = $(SRCS:.c=.o)

all: Colleen Grace Sully

Colleen: Colleen.o
	gcc $(FLAGS) Colleen.o -o Colleen
Grace: Grace.o
	gcc $(FLAGS) Grace.o -o Grace
Sully: Sully.o
	gcc $(FLAGS) Sully.o -o Sully

clean:
	@rm -f $(OBJS)
	@echo "Done Clean"

fclean: clean
	@rm -rf Colleen Grace Sully
	@rm -f Sully_*
	@rm -f Grace_kid.c
	@echo "Done fclean"

re: fclean all

.PHONY: all clean fclean re
