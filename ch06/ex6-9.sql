-- 코드 6-9 마늘을 가장 많이 사용하는 요리 찾기

SELECT DISTINCT Recipes.RecipeTitle
FROM Recipes
  INNER JOIN Recipe_Ingredients.RecipeID
    ON Recipes.RecipeID = Recipe_Ingredients.RecipeID
  INNER JOIN Ingredients
    on Recipe_Ingredients.IngredientID
      = Ingredients.IngredientID
WHERE Ingredients.IngredientName = 'Garlic'
  AND Recipe_Ingredients.Amount = (
      SELECT MAX(Amount)
      FROM Recipe_Ingredients
        INNER JOIN Ingredients
	  ON Recipe_Ingredients.IngredientID =
	    Ingredients.IngredientID
      WHERE IngredientName = 'Garlic'
      );
