-- 코드 9-5 매수 CTE

SELECT
  ROW_NUMBER() OVER (
    PARTITION BY t.StockID
    ORDER BY t.TransactionDate, t.TransactionID, c.Num
    ) AS TransactionSeq,
  ...
FROM Tally AS c
  INNER JOIN Transactions AS t
    ON c.Num <= t.Quantity
WHERE t.TransactionTypeID = 1
