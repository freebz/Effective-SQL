-- 코드 6-11 연관성 있는 서브쿼리로 소고기와 마늘을 모두 사용하는 요리 찾기

SELECT Recipes.RecipeTitle
FROM Recipes
WHERE EXISTS (
  SELECT NULL
  FROM Ingredients
    INNER JOIN Recipe_Ingredients
      ON Ingredients.IngredientID =
        Recipe_Ingredients.IngredientID
  WHERE Ingredients.IngredientName = 'Beef'
    AND Recipe_Ingredients.RecipeID = Recipes.RecipeID
  ) AND EXISTS (
  SELECT NULL
  FROM Ingredients
    INNER JOIN Recipe_Ingredients
      ON Ingredients.IngredientID =
        Recipe_Ingredients.IngredientID
  WHERE Ingredients.IngredientName = 'Carlic'
    AND Recipe_Ingredients.RecipeID = Recipes.RecipeID
  );
