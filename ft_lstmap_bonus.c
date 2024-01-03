/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_lstmap_bonus.c                                  :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rmarzouk <rmarzouk@student.1337.ma>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/12/25 13:52:48 by rmarzouk          #+#    #+#             */
/*   Updated: 2023/12/29 11:16:56 by rmarzouk         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

t_list	*ft_lstmap(t_list *lst, void *(*f)(void *), void (*del)(void *))
{
	t_list	*head;
	t_list	*current;
	t_list	*newcont;

	head = NULL;
	if (lst && f && del)
	{
		while (lst)
		{
			newcont = f(lst->content);
			current = ft_lstnew(newcont);
			if (!current)
			{
				del(newcont);
				ft_lstclear(&head, del);
				return (NULL);
			}
			ft_lstadd_back(&head, current);
			lst = lst->next;
		}
	}
	return (head);
}
