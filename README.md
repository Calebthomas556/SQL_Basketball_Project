# James Harden 2014–15 Season Analysis  
**Regular Season vs. Playoffs Performance Evaluation**

## Project Overview
This project analyzes James Harden’s 2014–15 NBA season to evaluate performance trends across the regular season and playoffs. The analysis focuses on efficiency, volume, and decision-making in high-leverage situations, including playoff rounds and late-season stretches.

The goal of this project is to move beyond surface-level averages and determine whether Harden’s postseason reputation aligns with his statistical performance.

---

## Key Questions
This analysis was guided by the following questions:

- Did James Harden’s performance decline during the Western Conference Finals against Golden State?
- Is Harden a playoff riser, faller, or statistical “coaster”?
- Does Harden’s performance improve, decline, or stabilize as the season progresses?

---

## Data
- **Season:** 2014–15 NBA Season  
- **Games Played:** 81 Regular Season Games | 17 Playoff Games
- **Data Type:** Game-level box score statistics  
- **Game Types:** Regular Season and Playoffs  
- **Data Source:** Basketball Reference 

---

## Tools & Technologies
- **Language:** SQL  
- **Database:** SQLite  
- **Environment:** VS Code  
- **Version Control:** Git / GitHub  

---

## Metrics Used
The analysis includes both volume and efficiency metrics:

- Volume: PTS, TRB, AST, STL, BLK, TOV, PF
- Shooting Efficiency: FG%, eFG%, 3P%
- Playmaking Efficiency: Assist-to-Turnover Ratio
- Impact Metrics: Plus/Minus, Game Score

Shooting percentages were calculated using aggregate totals (e.g., `SUM(FG) / SUM(FGA)`) to avoid per-game averaging distortions.

---

## Methodology
The season was segmented into multiple analytical windows:

- **Regular Season Progression**
  - Games 1–20
  - Games 21–40
  - Games 41–60
  - Games 61–81

- **Playoff Analysis**
  - First Round
  - Second Round
  - Western Conference Finals

- **Additional Splits**
  - Pre vs. Post All-Star Break
  - High-leverage playoff games (elimination and must-win games)

SQL queries were used to compute averages, efficiency metrics, and ratios for each segment.

---

## Key Findings
- Harden’s overall playoff production closely mirrored his regular-season averages, indicating no broad postseason decline.
- Significant efficiency and ball-security breakdowns occurred in key Western Conference Finals games, particularly in high-leverage situations.
- Assist totals increased in the playoffs, but turnover rates rose faster, worsening his assist-to-turnover ratio.
- Post–All-Star break efficiency declined slightly, despite team winning percentage improving.
- Harden’s most efficient stretch of the season occurred during the second quarter of the regular season.

---

## Conclusion
This analysis suggests that James Harden was neither a consistent playoff riser nor faller during the 2014–15 season. Instead, his performance remained statistically stable overall, with notable struggles emerging primarily in high-pressure playoff moments rather than across the entire postseason.

---

## Project Structure

'''
data/
    james_harden_2014-2015.csv
    james_harden_playoff_2014-15.csv
notes/
    agenda.md
    notes.md
sql/
    01_setup.sql
    02_analysis.sql
README.md
'''


---

## Limitations
- Analysis is limited to box score data and does not include shot-location, tracking metrics, and some advnced statistics.
- Plus/Minus was used cautiously due to lineup and context dependencies.
- Single-season scope limits broader career conclusions.

---

## Future Improvements
- Compare Harden’s playoff performance to other high-usage guards
- Incorporate shot-location and play-type data
- Extend analysis across multiple seasons
- Add visualizations for efficiency vs. usage trends

---

## Author
Caleb Thomas

## Data Attribution
Data sourced from Basketball Reference. This project is for educational and analytical purposes only.