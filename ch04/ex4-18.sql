-- 코드 4-18 관심 제품을 추출하는 뷰 생성

CREATE VIEW ProdsOfInterest AS
SELECT Products.ProductName
FROM Products
WHERE ProductName IN
('Skateboard', 'Helmet', 'Knee Pads', 'Gloves');
