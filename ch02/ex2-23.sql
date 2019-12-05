-- 코드 2-23 동일 컬럼에 필터링된 인덱스를 여러 개 생성

CREATE NONCLUSTERED INDEX PendPubDocuments
  ON DocumentStatus (DocumentNumber, Status)
  WHERE Status = 'Pending publication';
CREATE NONCLUSTERED INDEX PendExpDocuments
  ON DocumentStatus (DocumentNumber, Status)
  WHERE Status = 'Pending expiration';
