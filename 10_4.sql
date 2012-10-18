SELECT FAC.title, COUNT(surname)
	FROM (SELECT GS.surname,F.title, F.id AS FAC_ID FROM faculty AS F 
	LEFT OUTER JOIN 
		(SELECT G.id,S.surname,G.fac_id FROM "group" AS G
		LEFT OUTER JOIN 
		student AS S 
		ON G.id=S.group_id) 
	AS GS ON GS.fac_id = F.id) AS GSF 
INNER JOIN faculty AS FAC
ON FAC.id = GSF.fac_id
GROUP BY(FAC.title)

-- GS: group /\ student => |group_id|student_id|; GSF => faculty/\ GS => |fac_id|stud_surname| with duplicating of fac_id, stud_surname - unique OR null