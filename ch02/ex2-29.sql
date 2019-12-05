-- 코드 2-29 비결정적 함수

CREATE FUNCTION CalculateAge(Date_of_Birth DATE)
  RETURNS NUMBER
AS
BEGIN
  RETURN
    TRUNC((SYSDATE - Date_of_Birth) / 365);
END
