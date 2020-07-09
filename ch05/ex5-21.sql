-- 코드 5-21 모든 종류의 요리법 개수를 구하는 쿼리

SELECT Recipe_Classes.RecipeClassDescription,
  COUNT(*) AS RecipeCount
FROM Recipe_Classes
  LEFT OUTER JOIN Recipes
    ON Recipe_Classes.RecipeClassID = Recipes.RecipeClassID
GROUP BY Recipe_Classes.RecipeClassDescription;
