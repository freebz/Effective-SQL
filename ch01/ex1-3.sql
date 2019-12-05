-- 코드 1-3 속성을 분할한 Authors 테이블을 생성하는 SQL

CREATE TABLE Authors (
  AuthorID int IDENTITY (1, 1),
  AuthFirst varchar(20),
  AuthMid varchar(15),
  AuthLast varchar(30),
  AuthStNum varchar(6),
  AuthStreet varchar(40),
  AuthCity varchar(30),
  AuthStProv varchar(2),
  AuthPostal varchar(10),
  AuthCountry varchar(35)
);
INSERT INTO Authors (AuthFirst, AuthMid, AuthLast, AuthStNum,
    AuthStreet, AuthCity, AuthStProv, AuthPostal, AuthCountry)
  VALUES ('John', 'L.', 'Viescas', '144',
    'Boulevard Saint-Germain', 'Paris', ' ', '75006', 'France');
INSERT INTO Authors (AuthFirst, AuthMid, AuthLast, AuthStNum,
    AuthStreet, AuthCity, AuthStProv, AuthPostal, AuthCountry)
  VALUES ('Douglas', 'J.', 'Steele', '555',
    'Sherbourne St.', 'Toronto', 'ON', 'M4X 1W6', 'Canada');
--  ... 로우 삽입 생략
