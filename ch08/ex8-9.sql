-- 코드 8-9 비동등 조인을 사용해 한 번에 두 팀씩 쌍을 이루는 모든 조합 구하기

SELECT Teams1.TeamID AS Team1ID,
  Team1.TeamName AS Team1Name,
  Team2.TeamID AS Team2ID,
  Team2.TeamName AS Team2Name
FROM Teams AS Teams1
  INNER JOIN Teams AS Teams2
    ON Teams2.TeamID > Teams1.TeamID
ORDER BY Teams1.TeamID, Teams2.TeamID;
