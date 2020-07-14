-- 코드 9-15 코드 9-13의 쿼리 수정

SELECT od.WeekDayNameLong AS OrderDateWeekDay,
  o.OrderDate,
  sd.WeekDayNameLong AS ShipDateWeekDay,
  o.ShipDate,
  sd.DateKey - od.DateKey AS DeliveryLead
FROM Orders AS o
  INNER JOIN DimDate AS od
    ON o.OrderDate = od.DateValue
  INNER JOIN DimDate AS sd
    ON o.ShipDate = sd.DateValue
  INNER JOIN DimDate AS td
    ON td.DateValue = CAST(GETDATE() AS date)
WHERE od.MonthSeqNo = (td.MonthSeqNo - 1);
