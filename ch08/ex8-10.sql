-- 코드 8-10 윈도우 함수를 사용해 홈 경기와 원정 경기를 할당하는 쿼리

WITH TeamPairs AS (
  SELECT
    ROW_NUMBER() OVER (
      ORDER BY Teams1.TeamID, Teams2.TeamID
      ) AS GameSeq,
    Teams1.TeamID AS Team1ID, Teams1.TeamName AS Team1Name,
    Teams2.TeamID AS Team2ID, Teams2.TeamName AS Team2Name
  FROM Teams AS Teams1
    CROSS JOIN Teams AS Teams2
  WHERE Teams2.TeamID > Teams1.TeamID
)
SELECT TeamPairs.GameSeq,
  CASE ROW_NUMBER() OVER (
    PARTITION BY TeamPairs.Team1ID
    ORDER BY GameSeq
    ) % 2
    WHEN 0 THEN
      CASE RANK() OVER (ORDER BY TeamPairs.Team1ID) % 3
        WHEN 0 THEN 'Home' ELSE 'Away' END
    ELSE
      CASE RANK() OVER (ORDER BY TeamPairs.Team1ID) % 3
        WHEN 0 THEN 'Away' ELSE 'Home' END
    END AS Team1PlayingAt,
  TeamPairs.Team1ID, TeamPairs.Team1Name,
  TeamPairs.Team2ID, TeamPairs.Team2Name
FROM TeamPairs
ORDER BY TeamPairs.GameSeq;
