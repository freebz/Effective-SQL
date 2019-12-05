-- 코드 2-18 자식 테이블의 길 잃은 레코드를 방지하는 트리거 생성

CREATE TRIGGER DelCascadeTrig
  ON Orders
  FRO DELETE
AS
  DELETE Order_Details
  FROM Order_Details, deleted
  WHERE Order_Details.OrderNumber = deleted.OrderNumber;
