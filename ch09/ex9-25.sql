-- 코드 9-25 2015년 각 분기별로 에이전트별 계약 합계 계산

SELECT ae.AgtFirstName, e.AgtLastName, z.YearNumber,
  SUM(ae.ContractPrice * z.Qtr_1st) AS First_Quarter,
  SUM(ae.ContractPrice * z.Qtr_2nd) AS Second_Quarter,
  SUM(ae.ContractPrice * z.Qtr_3rd) AS Third_Quarter,
  SUM(ae.ContractPrice * z.Qtr_4th) AS Fourth_Quarter
FROM ztblQuarters AS z
  CROSS JOIN (
    SELECT a.AgtFirstName, a.AgtLastName,
      e.StartDate, e.ContractPrice
    FROM Agents AS a
    LEFT JOIN Engagements AS e
      ON a.AgentID = e.AgentID
    ) AS ae
WHERE (ae.StartDate BETWEEN z.OuarterStart AND z.QuarterEND)
   OR (ae.StartDate IS NULL AND z.YearNumber = 2015)
GROUP BY AgtFirstName, AgtLastName, YearNumber;
