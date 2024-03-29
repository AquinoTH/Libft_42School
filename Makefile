# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: taquino- <taquino-@student.42sp.org.br>    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/19 11:18:32 by taquino-          #+#    #+#              #
#    Updated: 2023/11/09 15:27:22 by taquino-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CC = cc
CCFLAGS = -Wall -Wextra -Werror
SOURCES = ft_isalpha.c ft_isdigit.c ft_isalnum.c ft_isascii.c ft_isprint.c ft_strlen.c \
    ft_strlcpy.c ft_strlcat.c ft_toupper.c ft_tolower.c ft_strncmp.c ft_strnstr.c ft_atoi.c \
	ft_memmove.c ft_memcpy.c ft_strdup.c ft_memset.c ft_bzero.c ft_memchr.c ft_strchr.c \
	ft_strrchr.c ft_memcmp.c ft_calloc.c ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c \
	ft_putnbr_fd.c ft_substr.c ft_strjoin.c ft_strtrim.c ft_split.c ft_itoa.c ft_strmapi.c \
	ft_striteri.c \

OBJECTS = $(SOURCES:.c=.o)

all: $(NAME)

$(NAME): $(OBJECTS)
	
%.o: %.c
	$(CC) -c $< -o $@ $(CCFLAGS)
	ar rc $(NAME) $@ 

clean:
	rm -rf $(OBJECTS)

fclean: clean
	rm -rf $(NAME)

re: fclean all

.PHONY: all clean fclean re