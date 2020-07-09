-- 코드 5-30 각 OVER 절에서 서로 다른 조건을 가진 쿼리

SELECT
  t.AccountID, t.Amount,
  SUM(t.Amount) OVER (
    PARTITION BY t.AccountID
    ORDER BY t.TransactionID DESC
  ) - t.Amount AS TotalUnspent,
  SUM(t.Amount) OVER (
    ORDER BY t.TransactionID
  ) AS TotalOverall
FROM Transactions AS t
ORDER BY t.TransactionID;
