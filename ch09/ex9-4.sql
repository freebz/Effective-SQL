-- 코드 9-4 개별 주식의 매수와 매도를 분리하는 쿼리

WITH Buys AS (
  SELECT
    ROW_NUMBER() OVER (
      PARTITION BY t.StockID
      ORDER BY t.TransactionDate, t.TransactionID, c.Num
      ) AS TransactionSeq,
    c.Num AS StockSeq,
    t.StockID,
    t.TransactionID,
    t.TransactionDate,
    t.Price AS CostOfProduct
  FROM Tally AS c
    INNER JOIN Transactions AS t
      ON c.Num <= t.Quantity
  WHERE t.TransactionTypeID = 1
  ),
Cells AS (
  SELECT
    ROW_NUMBER() OVER (
      PARTITION BY t.StockID
      ORDER BY t.TransactionDate, t.TransactionID, c.Num
      ) AS TransactionSeq,
    c.Num AS StockSeq,
    t.StockID,
    t.TransactionID,
    t.TransactionDate,
    t.Price AS RevenueOfProduct
  FROM Tally AS c
    INNER JOIN Transactions AS t
      ON c.Num <= t.Quantity
  WHERE t.TransactionTypeID = 2
  )
      SELECT
        b.StockID,
	b.TransactionSeq,
	b.TransactionID AS BuyID,
	s.TransactionID AS SellID,
	b.TransactionDate AS BuyDate,
	s.TransactionDate AS SellDate,
	b.CostOfProduct,
	s.RevenueOfProduct,
	s.RevenueOfProduct - b.CostOfProduct AS GrossMargin
      FROM Buys AS b
        INNER JOIN Sells AS s
	  ON b.StockID = s.StockID
	    AND b.TransactionSeq = s.TransactionSeq
      GROUP BY b.TransactionSeq;
