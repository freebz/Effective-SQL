-- 코드 2-17 자식 테이블에서 길 잃은 레코드를 방지하는 DRI 사용

ALTER TABLE Order_Details
  ADD CONSTRAINT fkOrder FOREIGN KEY (OrderNumber)
    REFERENCES Orders (OrderNumber) ON DELETE CASCADE;
