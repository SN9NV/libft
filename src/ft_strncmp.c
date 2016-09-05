/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strncmp.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: adippena <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2016/05/15 11:30:21 by adippena          #+#    #+#             */
/*   Updated: 2016/08/10 10:37:55 by adippena         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int		ft_strncmp(const char *s1, const char *s2, size_t n)
{
	while ((*s1 == *s2) && (*s1 != '\0') && (*s2 != '\0') && --n)
	{
		s1++;
		s2++;
	}
	return (*(char *)s1 - *(char *)s2);
}