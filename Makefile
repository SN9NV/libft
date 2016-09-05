# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: adippena <angusdippenaar@gmail.com>        +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2016/08/26 18:13:07 by adippena          #+#    #+#              #
#    Updated: 2016/09/05 11:47:25 by adippena         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	libft.a
INCLUDE	=	-I include
CFLAGS	=	-Wall -Wextra -Werror -Wno-unused-result -g

INC		=	$(shell find include -type f)
SRC		=	$(shell find src -type f)
OBJ		=	$(SRC:src/%.c=build/%.o)

all: $(NAME)

build/%.o: src/%.c $(INC)
	@echo "\033[94mLFT CC    $@\033[0m"
	@mkdir -p $(dir $@)
	@gcc $(CFLAGS) $(INCLUDE) -c $< -o $@

$(NAME): $(OBJ)
	@echo "\033[94mLFT AR    $@\033[0m"
	@ar cr $@ $^
	@ranlib $@

clean:
	@echo "\033[94mLFT RM    object files\033[0m"
	@rm -rf build

fclean: clean
	@echo "\033[94mLFT RM    $(NAME)\033[0m"
	@rm -f $(NAME)

re: fclean all
