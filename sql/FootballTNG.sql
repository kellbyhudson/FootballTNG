
CREATE TABLE GradeScore (
                GradeScoreId INT AUTO_INCREMENT NOT NULL,
                GradeScore DOUBLE PRECISIONS DEFAULT 0 NOT NULL,
                PRIMARY KEY (GradeScoreId)
);


CREATE TABLE CreditScore (
                CreditScoreId INT AUTO_INCREMENT NOT NULL,
                CreditScore DOUBLE PRECISIONS DEFAULT 0 NOT NULL,
                PRIMARY KEY (CreditScoreId)
);


CREATE TABLE Conference (
                ConferenceId INT AUTO_INCREMENT NOT NULL,
                ConferenceName VARCHAR NOT NULL,
                PRIMARY KEY (ConferenceId)
);


CREATE TABLE Division (
                DivisionId INT AUTO_INCREMENT NOT NULL,
                DivisionName VARCHAR(50) NOT NULL,
                ConferenceId INT NOT NULL,
                PRIMARY KEY (DivisionId)
);


CREATE TABLE PlayerPosition (
                PlayerPositionId CHAR(2) NOT NULL,
                PlayerPositionName VARCHAR NOT NULL,
                PRIMARY KEY (PlayerPositionId)
);


CREATE TABLE Team (
                TeamId INT AUTO_INCREMENT NOT NULL,
                TeamName VARCHAR(30) NOT NULL,
                DivisionId INT NOT NULL,
                TeamNumberOfPlays INT DEFAULT 0,
                TeamRushAttempts INT DEFAULT 0,
                TeamPassReceptions INT DEFAULT 0,
                TeamPassesAttempted INT DEFAULT 0,
                TeamPassesCompleted INT DEFAULT 0,
                TeamRushYards INT DEFAULT 0,
                TeamReceivingYards INT DEFAULT 0,
                TeamPassYards INT DEFAULT 0,
                TeamTackles INT DEFAULT 0,
                TeamInterceptions INT DEFAULT 0,
                PRIMARY KEY (TeamId)
);


CREATE TABLE Player (
                PlayerId INT AUTO_INCREMENT NOT NULL,
                PlayerName VARCHAR(50) NOT NULL,
                PlayerPositionId CHAR(2) NOT NULL,
                TeamId INT NOT NULL,
                NumberOfPlays INT DEFAULT 0,
                RushAttempts INT DEFAULT 0,
                PassTargets INT DEFAULT 0,
                PassReceptions INT DEFAULT 0,
                PassesAttempted INT DEFAULT 0,
                PassesCompleted INT DEFAULT 0,
                RushYards INT DEFAULT 0,
                ReceivingYards INT DEFAULT 0,
                PassYards INT DEFAULT 0,
                Tackles INT DEFAULT 0,
                Interceptions INT DEFAULT 0,
                CreditScoreId INT NOT NULL,
                GradeScoreId INT NOT NULL,
                PRIMARY KEY (PlayerId)
);


ALTER TABLE Player ADD CONSTRAINT gradescore_player_fk
FOREIGN KEY (GradeScoreId)
REFERENCES GradeScore (GradeScoreId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Player ADD CONSTRAINT creditscore_player_fk
FOREIGN KEY (CreditScoreId)
REFERENCES CreditScore (CreditScoreId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Division ADD CONSTRAINT conference_division_fk
FOREIGN KEY (ConferenceId)
REFERENCES Conference (ConferenceId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Team ADD CONSTRAINT division_team_fk
FOREIGN KEY (DivisionId)
REFERENCES Division (DivisionId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Player ADD CONSTRAINT playerposition_player_fk
FOREIGN KEY (PlayerPositionId)
REFERENCES PlayerPosition (PlayerPositionId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;

ALTER TABLE Player ADD CONSTRAINT team_player_fk
FOREIGN KEY (TeamId)
REFERENCES Team (TeamId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
