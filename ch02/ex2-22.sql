-- 코드 2-22 필터링된 인덱스 생성

CREATE NONCLUSTERED INDEX PendingDocuments
  ON DocumentStatus (DocumentNumber, Status)
  WHERE Status IN ('Pending publication', 'Pending expiration');
