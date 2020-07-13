-- 코드 8-8 카티전 곱을 사용해 한 번에 두 팀씩 쌍을 이루는 모든 조합 구하기

SELECT Teams1.TeamID AS Team1ID,
  Team1.TeamName AS Team1Name,
  Team2.TeamID AS Team2ID,
  Team2.TeamName AS Team2Name
FROM Teams AS Teams1
  CROSS JOIN Teams AS Teams2
WHERE Teams2.TeamID > Teams1.TeamID
ORDER BY Teams1.TeamID, Teams2.TeamID;
