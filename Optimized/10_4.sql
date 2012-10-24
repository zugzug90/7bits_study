SELECT F.title,  COUNT(G.id) FROM faculty AS F
LEFT OUTER JOIN
"group" AS G
ON F.id = G.fac_id
	LEFT OUTER JOIN student S
	ON S.group_id = G.id
GROUP BY F.title