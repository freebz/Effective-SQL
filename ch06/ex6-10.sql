-- 코드 6-10 연관성 있는 서브쿼리를 사용해 로우의 개수 세기

SELECT Recipe_Classes.RecipeClassDescription, (
    SELECT COUNT(*)
    FROM Recipes
    WHERE Recipes.RecipeClassID =
      Recipe_Classes.RecipeClassID
    ) AS RecipeCount
FROM Recipe_Classes;
