-- 코드 2-20 자기 참조 관계에 DRI를 적용하는 테이블 생성

CREATE TABLE OrgChart (
  employeeID INTEGER NOT NULL PRIMARY KEY,
  manager_employeeID INTEGER
CONSTRAINT SelfReference FOREIGN KEY (manager_employeeID)
REFERENCES OrgChart (employeeID)
ON DELETE SET NULL
ON UPDATE CASCADE
);
