-- 코드 5-26 세 개 미만의 향신료를 첨가한 메인 코스 요리를 찾는 올바른 쿼리

SELECT Recipes.RecipeTitle,
  COUNT(ri.RecipeID) AS IngredCount
FROM Recipe_Classes
  INNER JOIN Recipes
    ON Recipe_Classes.RecipeClassID = Recipes.Recipes.RecipeClassID
  LEFT OUTER JOIN (
    SELECT Recipe_Ingredients.RecipeID,
      Ingredient_Classes.IngredientClassDescription
    FROM Recipe_Ingredients
      INNER JOIN Ingredients
        ON Recipe_Ingredients.IngredientID =
     	  Ingredients.IngredientID
      INNER JOIN Ingredient_Classes
        ON Ingredients.IngredientClassID =
	  Ingredient_Classes.IngredientClassID
    WHERE Ingredient_Classes.IngredientClassDescription = 'Spice'
    ) AS ri
    ON Recipes.RecipeID = ri.RecipeID
WHERE Recipe_Classes.RecipeClassDescription = 'Main course'
GROUP BY Recipes.RecipeTitle
HAVING COUNT(ri.RecipeID) < 3;
