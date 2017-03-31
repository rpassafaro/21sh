#include "../headers/minishell.h"

char *cop_begin(char *ret, int spot)
{
	int go_to;
	int i;
	char *buff;

	i = 0;
	go_to = ft_strlen(ret) - spot;
	buff = ft_strnew(go_to);
	while (i < go_to)
	{
		buff[i] = ret[i];
		i++;
	}
	return (buff);
}

char *copend(char *ret, int spot)
{
	int go_from;
	char *buff;
	int i;

	go_from = ft_strlen(ret) - spot;
	buff = ft_strnew(spot);
	i = 0;
	while (ret[go_from])
	{
		buff[i] = ret[go_from];
		i++;
		go_from++;
	}
	return buff;
}

char *del_fun(char *ret, int spot)
{
	char *begin;
	char *end;
	int save;

	save = ft_strlen(ret) - spot;
	ret[save - 1] = '\0';
	begin = ft_strdup(ret);
	ret = ret + save;
	end = ft_strdup(ret);
	ret = ret + save;
	free(begin);
	free(end);
	return(ft_strjoin(begin,end));

}

char *addtobuff(t_shell *shell, char *ret, char *str1)
{
	char *begin;
	char *end;
	char *join;
	char *final;

	if (shell->lineinfo->linespot > 0)
	{
		begin = cop_begin(ret, shell->lineinfo->linespot);
		end = copend(ret, shell->lineinfo->linespot);
		join = ft_strjoin(begin, (const char*)str1);
		final = ft_strjoin(join, end);
		free (begin);
		free (join);
		free (end);
		return (final);
	}
	else
		return(ft_strjoin(ret, (const char*)str1));
}
