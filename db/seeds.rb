Users.create(name: "Carol", email: "carol@test.com", password_digest: "32asdf&*&^SDFhk")
Users.create(name: "Yan", email: "yan@test.com", password_digest: "aasdf982374986&#")
Users.create(name: "Marco", email: "marco@test.com", password_digest: "2387rsdfklj(*&2@#(")

Recipes.create(user_id: 1, name: "Avocado Toast", chef: "Grandma Susan", prep_time: 150, cook_time: 0, temperature: "null")
Recipes.create(user_id: 2, name: "Chocolate Chip Cookies", chef: "Nestle Tollhouse", prep_time: 500, cook_time: 200, temperature: 350)
Recipes.create(user_id: 3, name: "Loaded Baked Potato", chef: "Ina Garten", prep_time: 350, cook_time: 600, temperature: 450)

Ingredients.create(recipe_id: 10, name: "sourdough bread", measurement: "1 slice")
Ingredients.create(recipe_id: 10, name: "avocado", measurement: 1)
Ingredients.create(recipe_id: 10, name: "red pepper flakes", measurement: "1 tsp")

Directions.create(recipe_id: 10, order: 1, instruction: "slice and toast sourdough bread")
Directions.create(recipe_id: 10, order: 2, instruction: "cut avocado in half, scoop into bowl and mash")
Directions.create(recipe_id: 10, order: 3, instruction: "spread avocado on toasted bread, top with red pepper flakes")
