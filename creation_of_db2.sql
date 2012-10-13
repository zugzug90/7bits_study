DROP TABLE faculty;
CREATE TABLE faculty
( id SERIAL NOT NULL,
title character(80) NOT NULL,
decan_surname character(30) NOT NULL,
decan_name character(30) NOT NULL,
decan_last_name character(30) NOT NULL,
CONSTRAINT fac_pk PRIMARY KEY (id)
)

CREATE TABLE "group"
(id SERIAL NOT NULL,
"name" character(10) NOT NULL,
fac_id INTEGER NOT NULL,
set_year SMALLINT NOT NULL,
CONSTRAINT "group_pk" PRIMARY KEY (id),
CONSTRAINT "group_fk" FOREIGN KEY (fac_id)
REFERENCES faculty(id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE RESTRICT)

CREATE TABLE department
(id SERIAL NOT NULL,
fac_id INTEGER NOT NULL,
title character(80) NOT NULL,
mgr_surname character(30) NOT NULL,
mgr_name character(30) NOT NULL,
mgr_last_name character(30) NOT NULL,
CONSTRAINT dep_pk PRIMARY KEY (id),
CONSTRAINT dep_fk FOREIGN KEY (fac_id)
REFERENCES faculty(id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE RESTRICT)

CREATE TABLE student
(id SERIAL NOT NULL,
department_id INTEGER NOT NULL,
group_id INTEGER NOT NULL,
surname character(30) NOT NULL,
"name" character(30) NOT NULL,
last_name character(30) NOT NULL,
is_head BOOLEAN DEFAULT false,
CONSTRAINT student_pk PRIMARY KEY (id),
CONSTRAINT student_group_fk FOREIGN KEY (group_id)
REFERENCES "group"(id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE RESTRICT,
CONSTRAINT student_dep_fk FOREIGN KEY (department_id) 
REFERENCES department(id) MATCH SIMPLE
ON UPDATE CASCADE ON DELETE RESTRICT)