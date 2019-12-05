-- 코드 2-19 계산 값을 처리하는 트리거 생성

CREATE TRIGGER updateOrdersOrderTotals
  ON Orders
  AFTER INSERT, DELETE, UPDATE
AS
  BEGIN UPDATE Orders
  SET OrderTotal = (
      SELECT SUM(QuantityOrdered * QuotedPrice)
      ROM Order_Details OD
      WHERE OD.OrderNumber = Orders.OrderNumber
  )
  WHERE Orders.OrderNumber IN(
    SELECT OrderNumber FROM deleted
    UNION
    SELECT OrderNumber FROM inserted
  );
END;
