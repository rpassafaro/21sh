CC =	gcc

FLAG =	-ltermcap -Wall -Wextra -Werror -o

NAME =	21sh

SRCS =	libft/ft_putchar.c \
		libft/ft_putstr.c \
		libft/ft_isalpha.c \
		libft/ft_isdigit.c \
		libft/ft_isalnum.c \
		libft/ft_isascii.c \
		libft/ft_isprint.c \
		libft/ft_toupper.c \
		libft/ft_tolower.c \
		libft/ft_atoi.c \
		libft/ft_itoa.c \
		libft/ft_strnew.c \
		libft/ft_strdel.c \
		libft/ft_strclr.c \
		libft/ft_strdup.c \
		libft/ft_strlen.c \
		libft/ft_strcpy.c \
		libft/ft_strncpy.c \
		libft/ft_strcat.c \
		libft/ft_strncat.c \
		libft/ft_strlcat.c \
		libft/ft_strchr.c \
		libft/ft_strrchr.c \
		libft/ft_strstr.c \
		libft/ft_strnstr.c \
		libft/ft_strcmp.c \
		libft/ft_strncmp.c \
		libft/ft_memset.c \
		libft/ft_bzero.c \
		libft/ft_memcpy.c \
		libft/ft_memccpy.c \
		libft/ft_memmove.c \
		libft/ft_memchr.c \
		libft/ft_memcmp.c \
		libft/ft_memalloc.c \
		libft/ft_memdel.c \
		libft/ft_striter.c \
		libft/ft_striteri.c \
		libft/ft_strmap.c \
		libft/ft_strmapi.c \
		libft/ft_strequ.c \
		libft/ft_strnequ.c \
		libft/ft_strsub.c \
		libft/ft_strjoin.c \
		libft/ft_strtrim.c \
		libft/ft_strsplit.c \
		libft/ft_putendl.c \
		libft/ft_putnbr.c \
		libft/ft_putchar_fd.c \
		libft/ft_putstr_fd.c \
		libft/ft_putendl_fd.c \
		libft/ft_putnbr_fd.c \
		srcs/env.c \
		srcs/minishell.c \
		srcs/runbin.c \
		srcs/utils.c \
		srcs/vector.c \
		srcs/vector_a.c \
		srcs/readtmp.c \
		srcs/exec.c \
		srcs/input.c \
		srcs/input_a.c \
		srcs/mysplit.c \
		builtins/b_env.c \
		builtins/dispatch.c \
		builtins/changedir.c \
		builtins/changedir_a.c \
		builtins/echo_b.c \
		gui_addons/interpreter.c \
		srcs/term.c \
		srcs/insert.c\
		srcs/check.c \
		srcs/utils2.c \
		srcs/parsecmds.c \
		srcs/edit_buff.c \
		srcs/free_cmd.c \
		srcs/freetrim.c \
		srcs/heredoc.c \
		srcs/newparse.c

OBJS =	$(NAME)

all: 	$(NAME)

$(NAME):
		@$(CC) $(FLAG) $(NAME) $(SRCS)

clean:
		@/bin/rm -f $(OBJS)

fclean:	clean
		@/bin/rm -f $(NAME)

re: fclean/ all

.PHONY: all clean fclean relibft/
