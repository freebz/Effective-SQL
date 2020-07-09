-- 코드 5-23 서브쿼리로 각 종류별 요리의 개수를 구하는 쿼리

SELECT Recipe_Classes.RecipeClassDescription, (
  SELECT COUNT(Recipes.RecipeClassID)
  FROM Recipes
  WHERE Recipes.RecipeClassID = Recipe_Classes.RecipeClassID
  ) AS RecipeCount
FROM Recipe_Classes;
