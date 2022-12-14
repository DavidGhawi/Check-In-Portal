INSERT INTO SUPERVISOR(SUPERVISOR_ID, `NAME`, EMAIL, PASSWORD_HASH)
VALUES (1,'CARL', 'CARL@GMAIL.COM', 1);
INSERT INTO SUPERVISOR(SUPERVISOR_ID, `NAME`, EMAIL, PASSWORD_HASH)
VALUES (2,'PHIL', 'PHIL@GMAIL.COM', 1);
INSERT INTO SUPERVISOR(SUPERVISOR_ID, `NAME`, EMAIL, PASSWORD_HASH)
VALUES (3,'IAN', 'IAN@GMAIL.COM', 1);
INSERT INTO SUPERVISOR(SUPERVISOR_ID, `NAME`, EMAIL, PASSWORD_HASH)
VALUES (4,'ANDREW', 'ANDREW@GMAIL.COM', 1);


INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (1,'JOHN', 'JOHN@GMAIL.COM', 'DEVELOPER', 1 , 1);
INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (2,'JAMES', 'JAMES@GMAIL.COM', 'DEVELOPER', 1 , 1);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (3,'OLI', 'OLI@GMAIL.COM', 'DEVELOPER', 1 , 2);
INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (4,'JACK', 'JACK@GMAIL.COM', 'DEVELOPER', 1 , 2);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (5,'DAN', 'DAN@GMAIL.COM', 'DEVELOPER', 1 , 3);
INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (6,'ADIAN', 'ADIAN@GMAIL.COM', 'DEVELOPER', 1 , 3);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (7,'LUCA', 'LUCA@GMAIL.COM', 'DEVELOPER', 1 , 4);
INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (8,'JAYDEN', 'JAYDEN@GMAIL.COM', 'DEVELOPER', 1 ,4);


INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (1, 1, 7, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (2, 1, 8, '2022-10-14');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (3, 2, 6, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (4, 2, 9, '2022-10-14');


INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (5, 3, 10, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (6, 3, 9, '2022-10-14');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (7, 4, 9, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (8, 4, 8, '2022-10-14');


INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (1, 1, 1, '2022-10-07');
INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (2, 2, 1, '2022-10-14');
INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (3, 3, 2, '2022-10-07');
INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (4, 4, 2, '2022-10-14');

INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (5, 5, 3, '2022-10-07');
INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (6, 6, 3, '2022-10-14');
INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (7, 7, 4, '2022-10-07');
INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (8, 8, 4, '2022-10-14');


INSERT INTO NOTE(NOTE_ID, ONE_TO_ONE_ID, NOTE) VALUES (1, 1, 'good well-being');
INSERT INTO NOTE(NOTE_ID, ONE_TO_ONE_ID, NOTE) VALUES (2, 2, 'great well-being');
INSERT INTO NOTE(NOTE_ID, ONE_TO_ONE_ID, NOTE) VALUES (3, 3, 'no issues');
INSERT INTO NOTE(NOTE_ID, ONE_TO_ONE_ID, NOTE) VALUES (4, 4, 'anything');