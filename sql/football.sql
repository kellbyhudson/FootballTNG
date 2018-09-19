
CREATE TABLE PlayerPosition (
                PlayerPositionId CHAR(2) NOT NULL,
                PlayerPositionName VARCHAR NOT NULL,
                PRIMARY KEY (PlayerPositionId)
);


CREATE TABLE Team (

);


CREATE TABLE Player (
                PlayerId INT AUTO_INCREMENT NOT NULL,
                PlayerName VARCHAR(50) NOT NULL,
                PlayerPositionId CHAR(2) NOT NULL,
                PRIMARY KEY (PlayerId)
);


ALTER TABLE Player ADD CONSTRAINT playerposition_player_fk
FOREIGN KEY (PlayerPositionId)
REFERENCES PlayerPosition (PlayerPositionId)
ON DELETE NO ACTION
ON UPDATE NO ACTION;
