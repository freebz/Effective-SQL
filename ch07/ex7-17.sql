-- 코드 7-17 표 7-4의 뷰를 만드는 CREATE VIEW

CREATE VIEW BeerStyles AS
SELECT Cat.CategoryDS AS Category, Cou.CountryNM AS Country,
  Sty.StyleNM AS Style, Sty.ABVHighNb AS MaxBV
FROM Styles AS Sty
  INNER JOIN Categories AS Cat
    ON Sty.CategoryFK = Cat.CategoryID
  INNER JOIN Countries AS Cou
    ON Sty.CountryFK = Cou.CountryID;
