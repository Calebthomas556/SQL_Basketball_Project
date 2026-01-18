SELECT * FROM harden_2015_game_logs;

-- Hardens regular Season Averages
SELECT AVG(PTS), AVG(TRB), AVG(AST), AVG(STL), AVG(BLK), AVG(TOV),
AVG(FGA) AS FieldGoalsAttempted,
AVG(FG) AS FieldGoalsMade,
SUM(FG) * 1.0 / SUM(FGA) AS fgperc,
AVG(ThrPA) AS ThreesAttempted,
AVG(ThrP) AS ThreesMade,
SUM(ThrP) * 1.0 / SUM(ThrPA) AS ThreePerc,
(SUM(FG) + 0.5 * SUM(ThrP)) * 1.0 / SUM(FGA) AS efg,
SUM(AST) * 1.0/NULLIF(SUM(TOV), 0) AS ast_turnover_ratio,
SUM(PlusMinus) AS PlusMinus,
AVG(PF) AS avg_pf,
AVG(MP) AS minutes_per_game
FROM harden_2015_game_logs
WHERE game_type = 'Regular Season';

-- Hardens Playoff Stats
SELECT AVG(PTS), AVG(TRB), AVG(AST), AVG(STL), AVG(BLK), AVG(TOV),
AVG(FGA) AS FieldGoalsAttempted,
AVG(FG) AS FieldGoalsMade,
SUM(FG) * 1.0 / SUM(FGA) AS fgperc,
AVG(ThrPA) AS ThreesAttempted,
AVG(ThrP) AS ThreesMade,
SUM(ThrP) * 1.0 / SUM(ThrPA) AS ThreePerc,
(SUM(FG) + 0.5 * SUM(ThrP)) * 1.0 / SUM(FGA) AS efg,
SUM(AST) * 1.0/NULLIF(SUM(TOV), 0) AS ast_turnover_ratio,
SUM(PlusMinus) AS PlusMinus,
AVG(PF) AS avg_pf,
AVG(MP) AS minutes_per_game
FROM harden_2015_game_logs
WHERE game_type = 'Playoff';

-- HArdens Box Score Stats from first two rounds of playoffs 
SELECT AVG(PTS), AVG(TRB), AVG(AST), AVG(STL), AVG(BLK), AVG(TOV) FROM harden_2015_game_logs
WHERE game_type = 'Playoff' AND OPP != 'GSW';

--Harden's box score stats in WCF against Golden State
SELECT AVG(PTS), AVG(TRB), AVG(AST), AVG(STL), AVG(BLK), AVG(TOV) FROM harden_2015_game_logs
WHERE game_type = 'Playoff' AND OPP = 'GSW';

--Hardens Efficiency and Effectiveness in first two rounds of playoffs
SELECT SUM(FG) * 1.0 / SUM(FGA) AS fgperc,
(SUM(FG) + 0.5 * SUM(ThrP)) * 1.0 / SUM(FGA) AS efg, 
SUM(AST) * 1.0/NULLIF(SUM(TOV), 0) AS ast_turnover_ratio,
SUM(PlusMinus) AS PlusMinus,
AVG(PF) AS avg_pf
FROM harden_2015_game_logs 
WHERE game_type = 'Playoff' AND OPP != 'GSW';

--Hardens Efficiency and Effectiveness in WCF
SELECT SUM(FG) * 1.0 / SUM(FGA) AS fgperc,
(SUM(FG) + 0.5 * SUM(ThrP)) * 1.0 / SUM(FGA) AS efg, 
SUM(AST) * 1.0/NULLIF(SUM(TOV), 0) AS ast_turnover_ratio,
SUM(PlusMinus) AS PlusMinus,
AVG(PF) AS avg_pf
FROM harden_2015_game_logs 
WHERE game_type = 'Playoff' AND OPP = 'GSW';

-- Hardesn Game Logs Vs GSW in Regular Season
SELECT PTS, TRB, AST, STL, BLK, TOV, PF, FG, FGA, FGPerc AS FG_Percentage, 
ThrP as Threes_made, ThrPA AS Threes_Attempted,
ThrPerc AS Three_point_percentage, eFGPerc, PlusMinus, 
AST * 1.0 / NULLIF(TOV, 0) AS ast_turnover_ratio,
MP AS Minutes_per_game
FROM harden_2015_game_logs
WHERE game_type = 'Regular Season' AND OPP = 'GSW';

--Harden Game Logs in WCF
SELECT PTS, TRB, AST, STL, BLK, TOV, PF, FG, FGA, FGPerc AS FG_Percentage, 
ThrP as Threes_made, ThrPA AS Threes_Attempted,
ThrPerc AS Three_point_percentage, eFGPerc, PlusMinus, 
AST * 1.0 / NULLIF(TOV, 0) AS ast_turnover_ratio,
MP AS Minutes_per_game
FROM harden_2015_game_logs
WHERE game_type = 'Playoff' AND OPP = 'GSW';


--Hardens Performance before All-Star break
SELECT AVG(PTS), AVG(TRB), AVG(AST), AVG(STL), AVG(BLK), AVG(TOV),
AVG(FGA) AS FieldGoalsAttempted,
AVG(FG) AS FieldGoalsMade,
SUM(FG) * 1.0 / SUM(FGA) AS fgperc,
AVG(ThrPA) AS ThreesAttempted,
AVG(ThrP) AS ThreesMade,
SUM(ThrP) * 1.0 / SUM(ThrPA) AS ThreePerc,
(SUM(FG) + 0.5 * SUM(ThrP)) * 1.0 / SUM(FGA) AS efg,
SUM(AST) * 1.0/NULLIF(SUM(TOV), 0) AS ast_turnover_ratio,
SUM(PlusMinus) AS PlusMinus,
AVG(PF) AS avg_pf,
AVG(MP) AS minutes_per_game
FROM harden_2015_game_logs
WHERE Date < '2015-02-15';

--Harden's performace after All-Star break
SELECT AVG(PTS), AVG(TRB), AVG(AST), AVG(STL), AVG(BLK), AVG(TOV),
AVG(FGA) AS FieldGoalsAttempted,
AVG(FG) AS FieldGoalsMade,
SUM(FG) * 1.0 / SUM(FGA) AS fgperc,
AVG(ThrPA) AS ThreesAttempted,
AVG(ThrP) AS ThreesMade,
SUM(ThrP) * 1.0 / SUM(ThrPA) AS ThreePerc,
(SUM(FG) + 0.5 * SUM(ThrP)) * 1.0 / SUM(FGA) AS efg,
SUM(AST) * 1.0/NULLIF(SUM(TOV), 0) AS ast_turnover_ratio,
SUM(PlusMinus) AS PlusMinus,
AVG(PF) AS avg_pf,
AVG(MP) AS minutes_per_game
FROM harden_2015_game_logs
WHERE Date > '2015-02-15' AND game_type = 'Regular Season';

--Harden's Season Highs
SELECT MAX(PTS),
MAX(TRB),
MAX(ORB),
MAX(DRB),
MAX(AST),
MAX(STL),
MAX(BLK),
MAX(ThrP),
MAX(FG),
MAX(TOV),
MAX(PlusMinus)
FROM harden_2015_game_logs
WHERE game_type = 'Regular Season';

--Average Game Score before the break.
SELECT AVG(GmSc) FROM harden_2015_game_logs
WHERE Date < '2015-02-15';

--Average Game Score after the break.
SELECT AVG(GmSc) FROM harden_2015_game_logs
WHERE Date > '2015-02-15' AND game_type = 'Regular Season';

-- Hardens performance 1st 20 games
SELECT AVG(PTS), AVG(TRB), AVG(AST), AVG(STL), AVG(BLK), AVG(TOV),
AVG(FGA) AS FieldGoalsAttempted,
AVG(FG) AS FieldGoalsMade,
SUM(FG) * 1.0 / SUM(FGA) AS fgperc,
AVG(ThrPA) AS ThreesAttempted,
AVG(ThrP) AS ThreesMade,
SUM(ThrP) * 1.0 / SUM(ThrPA) AS ThreePerc,
(SUM(FG) + 0.5 * SUM(ThrP)) * 1.0 / SUM(FGA) AS efg,
SUM(AST) * 1.0/NULLIF(SUM(TOV), 0) AS ast_turnover_ratio,
SUM(PlusMinus) AS PlusMinus,
AVG(PF) AS avg_pf,
AVG(MP) AS minutes_per_game
FROM harden_2015_game_logs
WHERE Gtm <= 20 and game_type = 'Regular Season';

-- Hardens performance 2nd 20 games
SELECT AVG(PTS), AVG(TRB), AVG(AST), AVG(STL), AVG(BLK), AVG(TOV),
AVG(FGA) AS FieldGoalsAttempted,
AVG(FG) AS FieldGoalsMade,
SUM(FG) * 1.0 / SUM(FGA) AS fgperc,
AVG(ThrPA) AS ThreesAttempted,
AVG(ThrP) AS ThreesMade,
SUM(ThrP) * 1.0 / SUM(ThrPA) AS ThreePerc,
(SUM(FG) + 0.5 * SUM(ThrP)) * 1.0 / SUM(FGA) AS efg,
SUM(AST) * 1.0/NULLIF(SUM(TOV), 0) AS ast_turnover_ratio,
SUM(PlusMinus) AS PlusMinus,
AVG(PF) AS avg_pf,
AVG(MP) AS minutes_per_game
FROM harden_2015_game_logs
WHERE Gtm BETWEEN 21 AND 40 AND game_type = 'Regular Season';

-- Hardens performance 3rd 20 games
SELECT AVG(PTS), AVG(TRB), AVG(AST), AVG(STL), AVG(BLK), AVG(TOV),
AVG(FGA) AS FieldGoalsAttempted,
AVG(FG) AS FieldGoalsMade,
SUM(FG) * 1.0 / SUM(FGA) AS fgperc,
AVG(ThrPA) AS ThreesAttempted,
AVG(ThrP) AS ThreesMade,
SUM(ThrP) * 1.0 / SUM(ThrPA) AS ThreePerc,
(SUM(FG) + 0.5 * SUM(ThrP)) * 1.0 / SUM(FGA) AS efg,
SUM(AST) * 1.0/NULLIF(SUM(TOV), 0) AS ast_turnover_ratio,
SUM(PlusMinus) AS PlusMinus,
AVG(PF) AS avg_pf,
AVG(MP) AS minutes_per_game
FROM harden_2015_game_logs
WHERE Gtm BETWEEN 41 AND 60 AND game_type = 'Regular Season';

-- Harden's Last 21 Games
SELECT AVG(PTS), AVG(TRB), AVG(AST), AVG(STL), AVG(BLK), AVG(TOV),
AVG(FGA) AS FieldGoalsAttempted,
AVG(FG) AS FieldGoalsMade,
SUM(FG) * 1.0 / SUM(FGA) AS fgperc,
AVG(ThrPA) AS ThreesAttempted,
AVG(ThrP) AS ThreesMade,
SUM(ThrP) * 1.0 / SUM(ThrPA) AS ThreePerc,
(SUM(FG) + 0.5 * SUM(ThrP)) * 1.0 / SUM(FGA) AS efg,
SUM(AST) * 1.0/NULLIF(SUM(TOV), 0) AS ast_turnover_ratio,
SUM(PlusMinus) AS PlusMinus,
AVG(PF) AS avg_pf,
AVG(MP) AS minutes_per_game
FROM harden_2015_game_logs
WHERE Gtm > 60 AND game_type = 'Regular Season';