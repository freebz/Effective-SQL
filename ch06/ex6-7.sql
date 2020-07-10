-- 코드 6-7 연산성 없는 서브쿼리로 소고기와 마늘을 모두 사용하는 요리 찾기

SELECT BeefRecipes.RecipeTitle
FROM (
  SELECT Recipes.RecipeID, Recipes.RecipeTitle
  FROM Recipes
    INNER JOIN Recipe_Ingredients
      ON Recipes.RecipeID = Recipe_Ingredients.RecipeID
    INNER JOIN Ingredients
      ON Ingredients.IngredientID =
        Recipe_Ingredients.IngredientID
  WHERE Ingredients.IngredientName = 'Beef'
  ) AS BeefRecipes
  INNER JOIN (
  SELECT Recipe_Ingredients.RecipeID
  FROM Recipe_Ingredients
    INNER JOIN Ingredients
      ON Ingredients.IngredientID =
        Recipe_Ingredients.IngredientID
  WHERE Ingredients.IngredientName = 'Garlic'
  ) AS GarlicRecipes
  ON BeefRecipes.RecipeID = GarlicRecipes.RecipeID;
