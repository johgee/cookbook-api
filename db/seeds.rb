User.create(name: "Carol", email: "carol@test.com", password: "password")
User.create(name: "Yan", email: "yan@test.com", password: "password")
User.create(name: "Marco", email: "marco@test.com", password: "password")

Recipe.create(user_id: 1, name: "Avocado Toast", chef: "Grandma Susan", prep_time: 150, cook_time: 0, temperature: "null")
Recipe.create(user_id: 2, name: "Chocolate Chip Cookies", chef: "Nestle Tollhouse", prep_time: 500, cook_time: 200, temperature: 350)
Recipe.create(user_id: 3, name: "Loaded Baked Potato", chef: "Ina Garten", prep_time: 350, cook_time: 600, temperature: 450)

Ingredient.create(recipe_id: 10, name: "sourdough bread", measurement: "1 slice")
Ingredient.create(recipe_id: 10, name: "avocado", measurement: 1)
Ingredient.create(recipe_id: 10, name: "red pepper flakes", measurement: "1 tsp")

Direction.create(recipe_id: 10, order: 1, instruction: "slice and toast sourdough bread")
Direction.create(recipe_id: 10, order: 2, instruction: "cut avocado in half, scoop into bowl and mash")
Direction.create(recipe_id: 10, order: 3, instruction: "spread avocado on toasted bread, top with red pepper flakes")
