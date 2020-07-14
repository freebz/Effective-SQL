-- 코드 9-7 첫 번째 CTE의 결과를 사용해 쿠폰 개수 찾기

... Coupons AS (
  SELECT CustDecPurch.CustomerID,
    ztblPurchaseCoupons.NumCoupons
  FROM CustDecPurch
    CROSS JOIN ztblPurchaseCoupons
  WHERE CustDecPurch.Purchase BETWEEN
    ztblPurchaseCoupons.LowSpend AND
    ztblPurchaseCoupons.HighSpend
) ...
