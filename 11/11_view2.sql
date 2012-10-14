CREATE OR REPLACE VIEW groups_summary AS 
 SELECT intersum.name AS group_name, intersum.q, s1.surname, s1.name, s1.last_name, intersum.fac_id
   FROM student s1
   JOIN ( SELECT "group".name, "group".id, total.q, "group".fac_id
           FROM "group", ( SELECT count(s.id) AS q, g.id AS gid
                   FROM student s
              JOIN "group" g ON s.group_id = g.id
             GROUP BY g.id) total
          WHERE "group".id = total.gid) intersum ON intersum.id = s1.group_id
  WHERE s1.is_head = true
  ORDER BY intersum.q;