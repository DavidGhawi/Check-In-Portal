INSERT INTO SUPERVISOR(SUPERVISOR_ID, `NAME`, EMAIL, PASSWORD_HASH)
VALUES (1,'CARL', 'CARL@GMAIL.COM', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG');
INSERT INTO SUPERVISOR(SUPERVISOR_ID, `NAME`, EMAIL, PASSWORD_HASH)
VALUES (2,'PHIL', 'PHIL@GMAIL.COM', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG');
INSERT INTO SUPERVISOR(SUPERVISOR_ID, `NAME`, EMAIL, PASSWORD_HASH)
VALUES (3,'IAN', 'IAN@GMAIL.COM', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG');
INSERT INTO SUPERVISOR(SUPERVISOR_ID, `NAME`, EMAIL, PASSWORD_HASH)
VALUES (4,'ANDREW', 'ANDREW@GMAIL.COM', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG');


INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (1,'JOHN', 'JOHN@GMAIL.COM', 'DEVELOPER', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG' , 1);
INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (2,'JAMES', 'JAMES@GMAIL.COM', 'DEVELOPER', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG' , 1);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (3,'OLI', 'OLI@GMAIL.COM', 'DEVELOPER', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG' , 2);
INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (4,'JACK', 'JACK@GMAIL.COM', 'DEVELOPER', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG' , 2);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (5,'DAN', 'DAN@GMAIL.COM', 'DEVELOPER', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG' , 3);
INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (6,'ADIAN', 'ADIAN@GMAIL.COM', 'DEVELOPER', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG' , 3);

INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (7,'LUCA', 'LUCA@GMAIL.COM', 'DEVELOPER', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG' , 4);
INSERT INTO EMPLOYEE(EMPLOYEE_ID, `NAME`, EMAIL, `ROLE`, PASSWORD_HASH, SUPERVISOR_ID)
VALUES (8,'JAYDEN', 'JAYDEN@GMAIL.COM', 'DEVELOPER', '$2a$10$23i6.aYUvVHJZp61O3hgJu3MxeIv8f.x7fGQAbBXyIYkBT/gGDVZG' ,4);


INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (1, 1, 7, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (2, 1, 8, '2022-10-14');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (3, 2, 6, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (4, 2, 9, '2022-10-14');


INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (5, 3, 10, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (6, 3, 9, '2022-10-14');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (7, 4, 9, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (8, 4, 8, '2022-10-14');

INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (9, 5, 4, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (10, 5, 5, '2022-10-14');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (11, 6, 7, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (12, 6, 5, '2022-10-14');

INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (13, 7, 7, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (14, 7, 3, '2022-10-14');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (15, 8, 2, '2022-10-07');
INSERT INTO CHECK_INS(CHECK_INS_ID, EMPLOYEE_ID, SCORE, `DATE`) VALUES (16, 8, 5, '2022-10-14');


INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (1, 1, 2, '2022-10-14');
INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (2, 2, 2, '2022-10-14');
INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (3, 3, 2, '2022-10-14');
INSERT INTO ONE_TO_ONE(ONE_TO_ONE_ID, EMPLOYEE_ID, SUPERVISOR_ID, `DATE`) VALUES (4, 4, 2, '2022-10-07');


INSERT INTO NOTE(NOTE_ID, ONE_TO_ONE_ID, NOTE) VALUES (1, 1, 'good well-being');
INSERT INTO NOTE(NOTE_ID, ONE_TO_ONE_ID, NOTE) VALUES (2, 2, 'great well-being');
INSERT INTO NOTE(NOTE_ID, ONE_TO_ONE_ID, NOTE) VALUES (3, 3, 'no issues');
INSERT INTO NOTE(NOTE_ID, ONE_TO_ONE_ID, NOTE) VALUES (4, 4, 'anything');

INSERT INTO GOAL(GOAL_ID, EMPLOYEE_ID, TITLE, `DESCRIPTION`, TARGET_DATE)
VALUES (1, 1, 'Better well-being', 'I would like to get my well-being to an AVG of 9', '2022-12-28');
INSERT INTO GOAL(GOAL_ID, EMPLOYEE_ID, TITLE, `DESCRIPTION`, TARGET_DATE)
VALUES (2, 2, 'Make more friends at work', 'I would like to socialize more in the work-place', '2022-12-20');
INSERT INTO GOAL(GOAL_ID, EMPLOYEE_ID, TITLE, `DESCRIPTION`, TARGET_DATE)
VALUES (3, 3, 'Take online courses', 'I would like to take more online course to improve my personal skills', '2023-02-01');
INSERT INTO GOAL(GOAL_ID, EMPLOYEE_ID, TITLE, `DESCRIPTION`, TARGET_DATE)
VALUES (4, 4, 'Get better at time-management', 'I would like to work on my time-management because I am always late', '2022-12-31');
INSERT INTO GOAL(GOAL_ID, EMPLOYEE_ID, TITLE, `DESCRIPTION`, TARGET_DATE)
VALUES (5, 5, 'Improve public speaking', 'I would like to improve my public speaking by asking my boss to preform weekly presentation', '2022-12-14');
INSERT INTO GOAL(GOAL_ID, EMPLOYEE_ID, TITLE, `DESCRIPTION`, TARGET_DATE)
VALUES (6, 6, 'Improve my work-life balance', 'I feel like I am spending too much time in the workplace', '2022-12-08');
INSERT INTO GOAL(GOAL_ID, EMPLOYEE_ID, TITLE, `DESCRIPTION`, TARGET_DATE)
VALUES (7, 7, 'Take on leadership responsibilities', 'I would like to improve my leadership skills', '2022-12-25');
INSERT INTO GOAL(GOAL_ID, EMPLOYEE_ID, TITLE, `DESCRIPTION`, TARGET_DATE)
VALUES (8, 8, 'Go above and beyond in the workplace', 'I need to start putting more effort at work', '2022-10-28');