-- 코드 6-1 소고기와 마늘 모두를 사용하는 요리법을 찾는 테이블 서브쿼리

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
