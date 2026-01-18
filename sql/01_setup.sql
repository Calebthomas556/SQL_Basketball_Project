DROP TABLE IF EXISTS harden_2015_game_logs;

CREATE TABLE harden_2015_game_logs (
    Rk INT,
    Gcar INT,
    Gtm INT,
    Date DATE,
    Team TEXT,
    Location TEXT,
    Opp TEXT,
    Result TEXT,
    Score VARCHAR(15),
    GS TEXT,
    MP TEXT,
    FG INT,
    FGA INT,
    FGPerc DECIMAL,
    ThrP INT,
    ThrPA INT,
    ThrPerc DECIMAL,
    TwP INT,
    TwPA INT,
    TwPerc DECIMAL,
    eFGPerc DECIMAL,
    FT INT,
    FTA INT,
    FTPerc DECIMAL,
    ORB INT,
    DRB INT,
    TRB INT,
    AST INT,
    STL INT,
    BLK INT,
    TOV INT,
    PF INT,
    PTS INT,
    GmSc DECIMAL,
    PlusMinus INT
);

SELECT * FROM harden_2015_game_logs;

SELECT COUNT(*) FROM harden_2015_game_logs;

-- Addind a game type column to distinguish from regular season and playoff games
ALTER TABLE harden_2015_game_logs
ADD COLUMN game_type TEXT;

-- Playoffs Started on 4/18/2015
UPDATE harden_2015_game_logs
SET game_type = 'Regular Season'
WHERE Date < '2015-04-18';

UPDATE harden_2015_game_logs
SET game_type = 'Playoff'
WHERE Date >= '2015-04-18';

--Deleting second header rows
DELETE FROM harden_2015_game_logs
WHERE Date = 'Date';

--Deleting total/summary rows
DELETE FROM harden_2015_game_logs
WHERE PlusMinus IS NULL;

--Deleting Row where Harden was suspended
DELETE FROM harden_2015_game_logs
WHERE GS = 'Suspended';
