Year : 
INSERT INTO `year`(id, label) VALUES (1,"First year (Bsc)");
INSERT INTO `year`(id, label) VALUES (2,"Second year (Bsc Hons)");
INSERT INTO `year`(id, label) VALUES (3,"Third year (Msc)");

Student : 
insert into student (id,firstname,lastname) values (1,'Olivier','Martin');
insert into student (id,firstname,lastname) values (2,'Pierre','Martin');
insert into student (id,firstname,lastname) values (3,'Jacques','Martin');
insert into student (id,firstname,lastname) values (4,'Martin','François');
insert into student (id,firstname,lastname) values (5,'Jennifer','Garner');

Module : 
INSERT INTO module(id, name, year) VALUES (1,'linux' ,1);
INSERT INTO module(id, name, year) VALUES (2, 'docker' ,1);
INSERT INTO module(id, name, year) VALUES (3,'symfony' ,2);
INSERT INTO module(id, name, year) VALUES (4, 'asp.net core' ,2);
INSERT INTO module(id, name, year) VALUES (5, "aspect oriented architecture", 3);
INSERT INTO module(id, name, year) VALUES (6,"ddd and hexagonal architecture", 3);

Enrolment : 
insert into enrolment (id_student,id_year,`from`,`to`) values (1,1,"2015-01-01 00:00:00","2015-12-31 00:00:00");
insert into enrolment (id_student,id_year,`from`,`to`) values (1,2,"2016-01-01 00:00:00","2016-12-31 00:00:00");
insert into enrolment (id_student,id_year,`from`,`to`) values (1,3,"2017-01-01 00:00:00","2017-12-31 00:00:00");
insert into enrolment (id_student,id_year,`from`,`to`) values (2,1,"2015-01-01 00:00:00","2015-12-31 00:00:00");
insert into enrolment (id_student,id_year,`from`,`to`) values (2,2,"2016-01-01 00:00:00","2016-12-31 00:00:00");
insert into enrolment (id_student,id_year,`from`,`to`) values (2,3,"2017-01-01 00:00:00","2017-12-31 00:00:00");
insert into enrolment (id_student,id_year,`from`,`to`) values (3,2,"2017-01-01 00:00:00","2017-12-31 00:00:00");

Assessment : 
INSERT INTO assessment(id_student, id_module, attempted, passed, grade) VALUES (1, 1,"2011-01-01 00:00:00","2017-02-01 00:00:00",12);
INSERT INTO assessment(id_student, id_module, attempted, passed, grade) VALUES (1, 2,"2012-02-01 00:00:00","2017-03-01 00:00:00",14);
INSERT INTO assessment(id_student, id_module, attempted, passed, grade) VALUES (2, 3,"2013-03-01 00:00:00","2017-04-01 00:00:00",9);
INSERT INTO assessment(id_student, id_module, attempted, passed, grade) VALUES (3, 4,"2014-04-01 00:00:00","2017-05-01 00:00:00",3);
INSERT INTO assessment(id_student, id_module, attempted, passed, grade) VALUES (4, 5,"2015-05-01 00:00:00","2017-06-01 00:00:00",2);
INSERT INTO assessment(id_student, id_module, attempted, passed, grade) VALUES (4, 5,"2016-06-01 00:00:00","2017-07-01 00:00:00",7);
INSERT INTO assessment(id_student, id_module, attempted, passed, grade) VALUES (5, 6,"2003-07-01 00:00:00","2017-08-01 00:00:00",17);
INSERT INTO assessment(id_student, id_module, attempted, passed, grade) VALUES (5, 6,"2006-08-01 00:00:00","2017-09-01 00:00:00",18);
