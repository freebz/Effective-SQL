-- 코드 6-8 셀러드 수프, 메인 코스 요리 찾기

SELECT Recipes.RecipeTitle
FROM Recipes
WHERE Recipes.RecipeClassID IN (
  SELECT rc.RecipeClassID
  FROM Recipe_Classes AS rc
  WHERE rc.RecipeClassDescription IN
    ('Salad', 'Soup', 'Main course')
  );
