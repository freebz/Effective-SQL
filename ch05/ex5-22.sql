-- 코드 5-22 모든 종류의 요리법 개수를 구하는 올바른 쿼리

SELECT Recipe_Classes.RecipeClassDescription,
  COUNT(Recipes.RecipeClassID) AS RecipeCount
FROM Recipe_Classes
  LEFT OUTER JOIN Recipes
    ON Recipe_Classes.RecipeClassID = Recipes.RecipeClassID
GROUP BY Recipe_Classes.RecipeClassDescription;
