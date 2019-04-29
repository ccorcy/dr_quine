# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ccorcy <ccorcy@student.42.fr>              +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/04/27 20:32:28 by ccorcy            #+#    #+#              #
#    Updated: 2019/04/29 18:47:01 by ccorcy           ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

FLAGS = -Wall -Wextra -Werror

SRCS = Colleen.c Grace.c Sully.c

all: Colleen/Colleen Grace/Grace Sully/Sully

Collen/Colleen: Colleen/Colleen.o
	gcc $(FLAGS) Colleen/Colleen.o -o Colleen/Colleen
Grace/Grace: Grace/Grace.o
	gcc $(FLAGS) Grace/Grace.o -o Grace/Grace
Sully/Sully: Sully/Sully.o
	gcc $(FLAGS) Sully/Sully.o -o Sully/Sully

clean:
	@rm -f Colleen/Colleen.o
	@rm -f Grace/Grace.o
	@rm -f Sully/Sully.o
	@echo "Done Clean"

fclean: clean
	@rm -rf Colleen/Colleen Grace/Grace Sully/Sully
	@rm -f Sully/Sully_*
	@rm -f Grace/Grace_kid.c
	@echo "Done fclean"

re: fclean all

.PHONY: all clean fclean re
