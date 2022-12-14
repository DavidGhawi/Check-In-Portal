SET MODE MYSQL;
SET IGNORECASE = TRUE;

DROP TABLE IF EXISTS EMPLOYEE;
DROP TABLE IF EXISTS SUPERVISOR;
DROP TABLE IF EXISTS CHECK_INS;
DROP TABLE IF EXISTS ONE_TO_ONE;
DROP TABLE IF EXISTS NOTE;
DROP TABLE IF EXISTS GOAL;


CREATE TABLE IF NOT EXISTS SUPERVISOR
(
    `SUPERVISOR_ID`   INTEGER AUTO_INCREMENT NOT NULL,
    `NAME`            VARCHAR(100)           NOT NULL,
    `EMAIL`           VARCHAR(30)            NOT NULL,
    `PASSWORD_HASH`   VARCHAR(128)           NOT NULL,
    PRIMARY KEY (`SUPERVISOR_ID`)
)
    ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS EMPLOYEE
(
    `EMPLOYEE_ID`       INTEGER AUTO_INCREMENT NOT NULL,
    `NAME`              VARCHAR(200)           NOT NULL,
    `EMAIL`             VARCHAR(30)            NOT NULL,
    `ROLE`              VARCHAR(30)            NOT NULL,
    `PASSWORD_HASH`     VARCHAR(128)           NOT NULL,
    `SUPERVISOR_ID`     INTEGER                NOT NULL,
    PRIMARY KEY (`EMPLOYEE_ID`),
    CONSTRAINT FK_SUPERVISOR_ID FOREIGN KEY (`SUPERVISOR_ID`) REFERENCES SUPERVISOR(`SUPERVISOR_ID`)
)
    ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS CHECK_INS
(
    `CHECK_INS_ID`  INTEGER AUTO_INCREMENT NOT NULL,
    `EMPLOYEE_ID`   INTEGER                NOT NULL,
    `SCORE`         INTEGER                NOT NULL,
    `DATE`          DATE                   NOT NULL,
    PRIMARY KEY (`CHECK_INS_ID`),
    FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES EMPLOYEE(`EMPLOYEE_ID`)
)
    ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS ONE_TO_ONE
(
    `ONE_TO_ONE_ID`   INTEGER AUTO_INCREMENT NOT NULL,
    `EMPLOYEE_ID`     INTEGER                NOT NULL,
    `SUPERVISOR_ID`   INTEGER                NOT NULL,
    `DATE`            DATE                   NOT NULL,
    PRIMARY KEY (`ONE_TO_ONE_ID`),
    FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES EMPLOYEE(`EMPLOYEE_ID`),
    FOREIGN KEY (`SUPERVISOR_ID`) REFERENCES SUPERVISOR(`SUPERVISOR_ID`)
)
    ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS NOTE
(
    `NOTE_ID`          INTEGER AUTO_INCREMENT NOT NULL,
    `ONE_TO_ONE_ID`    INTEGER                NOT NULL,
    `NOTE`             VARCHAR(300)           NOT NULL,
    PRIMARY KEY (NOTE_ID),
    FOREIGN KEY (`ONE_TO_ONE_ID`) REFERENCES ONE_TO_ONE(`ONE_TO_ONE_ID`)
)
    ENGINE = INNODB;

CREATE TABLE IF NOT EXISTS GOAL
(
    `GOAL_ID`          INTEGER AUTO_INCREMENT NOT NULL,
    `EMPLOYEE_ID`      INTEGER                NOT NULL,
    `GOAL`             VARCHAR(50)            NOT NULL,
    `DESCRIPTION`      VARCHAR(300)           NOT NULL,
    `TARGET_DATE`      DATE                   NOT NULL,
    `COMPLETED_DATE`   DATE,
    PRIMARY KEY (GOAL_ID),
    FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES EMPLOYEE(`EMPLOYEE_ID`)
    )
    ENGINE = INNODB;