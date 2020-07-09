-- 코드 5-24 세 개 미만의 향신료를 첨가한 메인 코스 요리를 찾는 쿼리

SELECT Recipes.RecipeTitle,
  COUNT(Recipe_Ingredients.RecipeID) AS IngredCount
FROM Recipe_Classes
  INNER JOIN Recipes
    ON Recipe_Classes.RecipeClassID = Recipes.Recipes.RecipeClassID
  INNER JOIN Ingredients
    ON Recipe_Ingredients.IngredientID =
      Ingredients.IngredientID
  INNER JOIN Ingredient_Classes
    ON Ingredients.IngredientClassID =
      Ingredient_Classes.IngredientClassID
WHERE Recipe_Classes.RecipeClassDescription = 'Main course'
  AND Ingredient_Classes.IngredientClassDescription = 'Spice'
GROUP BY Recipes.RecipeTitle
HAVING COUNT(Recipe_Ingredients.RecipeID) < 3;
