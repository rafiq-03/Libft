# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: rmarzouk <rmarzouk@student.1337.ma>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/12/09 11:21:31 by rmarzouk          #+#    #+#              #
#    Updated: 2024/06/09 18:09:06 by rmarzouk         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

CC = cc
CFLAGS = -Wall -Wextra -Werror

SRC_DIR = Mandatory/
SRC = $(addprefix $(SRC_DIR), \
								ft_atoi.c \
								ft_bzero.c \
								ft_calloc.c \
								ft_isalnum.c \
								ft_isalpha.c \
								ft_isascii.c \
								ft_isdigit.c \
								ft_isprint.c \
								ft_itoa.c \
								ft_memchr.c \
								ft_memcmp.c \
								ft_memcpy.c \
								ft_memmove.c \
								ft_memset.c \
								ft_putchar_fd.c \
								ft_putendl_fd.c \
								ft_putnbr_fd.c \
								ft_putstr_fd.c \
								ft_split.c \
								ft_strchr.c \
								ft_strdup.c \
								ft_striteri.c \
								ft_strjoin.c \
								ft_strlcat.c \
								ft_strlcpy.c \
								ft_strlen.c \
								ft_strmapi.c \
								ft_strncmp.c \
								ft_strnstr.c \
								ft_strrchr.c \
								ft_strtrim.c \
								ft_substr.c \
								ft_tolower.c \
								ft_toupper.c )
OBJ = ${SRC:.c=.o}
NAME = libft.a
B_DIR=Bonus/
SBONUS = $(addprefix $(B_DIR), \
ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c ft_lstdelone_bonus.c \
ft_lstiter_bonus.c ft_lstlast_bonus.c ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c)
OBONUS = ${SBONUS:.c=.o}
all: ${NAME}

${NAME}: ${OBJ}
	ar -rcs ${NAME} ${OBJ}

bonus: ${OBONUS}
	ar -rcs ${NAME} ${OBONUS}
	
%.o:%.c libft.h
	${CC} ${CFLAGS} -c $< -o $@

clean:
	rm -rf ${OBJ} ${OBONUS}

fclean: clean
	rm -rf ${NAME}

re: fclean all

.PHONY : all bonus clean fclean re
