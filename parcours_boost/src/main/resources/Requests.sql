INSERT INTO parcours (id, name)
   VALUES(NULL, 'Balade pres d HB');

INSERT INTO position (parcours_id, latitude, longitude)
      VALUES(LAST_INSERT_ID(), 45.75549,3.12915),
	    (LAST_INSERT_ID(), 45.75441,3.13009),
	    (LAST_INSERT_ID(), 45.75387,3.13072),
	    (LAST_INSERT_ID(), 45.75329,3.13130),
	    (LAST_INSERT_ID(), 45.75329,3.13130),
	    (LAST_INSERT_ID(), 45.75389,3.13270),
	    (LAST_INSERT_ID(), 45.75475,3.13364),
	    (LAST_INSERT_ID(), 45.75532,3.13521),
	    (LAST_INSERT_ID(), 45.75561,3.13705),
	    (LAST_INSERT_ID(), 45.75570,3.13759),
	    (LAST_INSERT_ID(), 45.75684,3.13731);




INSERT INTO parcours (id, name)
    VALUES(NULL, 'Balade autour de la place Gailleton');

INSERT INTO position (parcours_id, latitude, longitude)
    VALUES(LAST_INSERT_ID(), 45.75365, 4.83276),
          (LAST_INSERT_ID(), 45.75358, 4.83296),
          (LAST_INSERT_ID(), 45.75351, 4.83315),
          (LAST_INSERT_ID(), 45.75342, 4.83340),
          (LAST_INSERT_ID(), 45.75330, 4.83370),
          (LAST_INSERT_ID(), 45.75315, 4.83360),
          (LAST_INSERT_ID(), 45.75326, 4.83329),
          (LAST_INSERT_ID(), 45.75337, 4.83302);




INSERT INTO position (parcours_id, latitude, longitude)
VALUES ((SELECT id FROM parcours WHERE name ='Balade pres d HB'), 45.75749,3.13806),
       ((SELECT id FROM parcours WHERE name ='Balade pres d HB'), 45.75797,3.13838);

INSERT INTO position (parcours_id, latitude, longitude)
VALUES ((SELECT id FROM parcours WHERE name ='Balade autour de la place Gailleton'), 45.75344, 4.83265),
       ((SELECT id FROM parcours WHERE name ='Balade autour de la place Gailleton'), 45.75360, 4.83273);




SELECT * FROM parcours
ORDER BY name;



SELECT * FROM parcours
WHERE name LIKE '%place%';



SELECT * FROM parcours
WHERE id = ANY
  (SELECT parcours_id
  FROM position
  WHERE latitude > 45.75); 