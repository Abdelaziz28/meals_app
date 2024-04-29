class Meal {
  final String mealName;
  final int cookingTime;
  final String imagePath;
  final String directions;
  //gluten-free, lactose-free, vegan, healthy or sm
  final List<bool> filters;
  final String type;
  final bool favourite;
  final String instructions;
  final String ingredients;
  Meal({
    required this.mealName,
    required this.cookingTime,
    required this.imagePath,
    required this.directions,
    required this.filters,
    required this.type,
    this.favourite = false,
    required this.ingredients,
    required this.instructions
  });
}
final List<bool> filters =[false,false,false,false];
final List<Meal> allMeals = [
  Meal(
    mealName: 'Chicken Alfredo',
    cookingTime: 20,
    imagePath: 'assets/images/pizza.png',
    directions: 'Directions for Chicken Alfredo...',
    filters: [false, true, false, false],
    type: 'Italian',
    ingredients: """
      * 1 pound boneless, skinless chicken breasts, cut into bite-sized pieces
      * 1 tablespoon olive oil
      * 1/2 cup butter
      * 1/2 cup all-purpose flour
      * 4 cups chicken broth
      * 1 cup heavy cream
      * 1/2 cup grated Parmesan cheese
      * 1/4 cup grated Romano cheese
      * 1/4 teaspoon salt
      * 1/8 teaspoon black pepper
      * Fresh parsley, chopped (optional)
    """,
    instructions: """
      1. Cook the chicken in olive oil over medium heat until golden brown. Set aside.
      2. Melt butter in a large saucepan over medium heat. Whisk in flour and cook for 1 minute.
      3. Gradually whisk in chicken broth, then bring to a simmer. Cook until thickened, about 5 minutes.
      4. Stir in heavy cream, Parmesan cheese, Romano cheese, salt, and pepper.
      5. Add the cooked chicken back to the pan and heat through.
      6. Serve over cooked pasta and garnish with fresh parsley, if desired.
    """,
  ),
  Meal(
    mealName: 'Vegetable Stir Fry',
    cookingTime: 15,
    imagePath: 'assets/images/stirfry.png',
    directions: 'Directions for Vegetable Stir Fry...',
    filters: [true, false, true, true],
    type: 'Oriental',
    ingredients: """
      * 2 tablespoons vegetable oil
      * 1 onion, sliced
      * 2 cloves garlic, minced
      * 1 red bell pepper, sliced
      * 1 green bell pepper, sliced
      * 1 broccoli floret, chopped
      * 1 cup snap peas
      * 1/2 cup carrots, sliced
      * 1/4 cup soy sauce
      * 1 tablespoon brown sugar
      * 1 tablespoon cornstarch
      * 1/4 cup water
      * Cooked rice or noodles (for serving)
    """,
    instructions: """
      1. Heat oil in a large skillet or wok over medium-high heat. Add onion and cook until softened, about 5 minutes.
      2. Add garlic and cook for 30 seconds, until fragrant.
      3. Add bell peppers, broccoli, snap peas, and carrots. Stir-fry for 5-7 minutes, or until vegetables are tender-crisp.
      4. In a small bowl, whisk together soy sauce, brown sugar, cornstarch, and water.
      5. Pour the sauce into the pan with the vegetables and stir-fry for 1-2 minutes, or until the sauce thickens.
      6. Serve over cooked rice or noodles.
    """,
  ),
  Meal(
    mealName: 'Beef Tacos',
    cookingTime: 30,
    imagePath: 'assets/images/tacos.png',
    directions: 'Directions for Beef Tacos...',
    filters: [false, false, false, false],
    type: 'American',
    ingredients: """
      * 1 pound ground beef
      * 1 tablespoon olive oil
      * 1 onion, chopped
      * 1 green bell pepper, chopped
      * 1 packet taco seasoning
      * 1 (15 oz) can diced tomatoes, undrained
      * 1/2 cup water
      * Taco shells
      * Your favorite taco toppings (shredded cheese, lettuce, tomatoes, sour cream, salsa, etc.)
    """,
    instructions: """
      1. Heat olive oil in a large skillet over medium heat. Add ground beef and cook until browned, breaking it up with a spoon as it cooks.
      2. Drain off any excess fat.
      3. Add onion and bell pepper to the pan and cook until softened, about 5 minutes.
      4. Stir in taco seasoning, diced tomatoes, and water. Bring to a boil, then reduce heat and simmer for 10 minutes.
      5. Serve the taco filling in warmed taco shells with your favorite toppings.
    """,
  ),
Meal(
mealName: 'Chocolate Cake',
cookingTime: 60,
imagePath: 'assets/images/chocolate-cake.png',
directions: 'Directions for Chocolate Cake...',
filters: [false, true, false, false],
type: 'American',
ingredients: """
* 1 1/2 cups all-purpose flour
* 3/4 cup unsweetened cocoa powder
* 1 1/2 teaspoons baking soda
* 1/2 teaspoon salt
* 1 cup (2 sticks) unsalted butter, softened
* 1 1/2 cups granulated sugar
* 3 large eggs
* 1 teaspoon vanilla extract
* 1 cup buttermilk
""",
instructions: """
1. Preheat oven to 350°F (175°C). Grease and flour two 8-inch round cake pans.
2. In a medium bowl, whisk together flour, cocoa powder, baking soda, and salt.
3. In a large bowl, cream together butter and sugar until light and fluffy. Beat in eggs one at a time, then stir in vanilla extract.
4. Alternately add the dry ingredients and buttermilk to the wet ingredients, mixing until just combined.
5. Divide batter evenly between the prepared cake pans.
6. Bake for 30-35 minutes, or until a toothpick inserted into the center comes out clean.
7. Let cakes cool in pans for 10 minutes, then transfer to a wire rack to cool completely.
8. Frost with your favorite chocolate frosting (optional).
""",
),
Meal(
mealName: 'Garden Salad',
cookingTime: 10,
imagePath: 'assets/images/salad.png',
directions: 'Directions for Garden Salad...',
filters: [true, false, true, true],
type: 'Oriental',
ingredients: """
* 4 cups mixed greens
* 1 cucumber, sliced
* 1 tomato, sliced
* 1 red onion, sliced
* 1/2 cup crumbled feta cheese
* 1/4 cup olive oil
* 2 tablespoons balsamic vinegar
* 1 teaspoon dried oregano
* Salt and pepper to taste
""",
instructions: """
1. In a large bowl, combine mixed greens, cucumber, tomato, and red onion.
2. In a small bowl, whisk together olive oil, balsamic vinegar, and oregano.
3. Pour dressing over the salad and toss to coat.
4. Sprinkle with feta cheese, salt, and pepper to taste.
""",
),
Meal(
mealName: 'Pepperoni Pizza',
cookingTime: 25,
imagePath: 'assets/images/pizza.png',
directions: 'Directions for Pepperoni Pizza...',
filters: [false, false, false, false],
type: 'Italian',
ingredients: """
* 1 store-bought pizza dough (or your favorite pizza dough recipe)
* 1/2 cup pizza sauce
* 1 cup shredded mozzarella cheese
* 1/2 cup pepperoni slices
* Optional toppings: Italian sausage, mushrooms, green peppers, onions, etc.
""",
instructions: """
1. Preheat oven to 425°F (220°C).
2. Unroll pizza dough on a lightly floured surface. Stretch dough to fit a 12-inch pizza pan.
3. Spread pizza sauce evenly over the dough.
4. Top with mozzarella cheese, pepperoni, and any other desired toppings.
5. Bake for 15-20 minutes, or until the crust is golden brown and the cheese is melted and bubbly.
6. Let cool slightly before slicing and serving.
""",
),
Meal(
mealName: 'Fruit Salad',
cookingTime: 15,
imagePath: 'assets/images/fruit_salad.png',
directions: 'Directions for Fruit Salad...',
filters: [true, false, true, true],
type: 'American',
ingredients: """
* 2 cups mixed fruits (such as strawberries, blueberries, grapes, melon, etc.)
* 1/4 cup orange juice
* 1 tablespoon honey
* Mint leaves for garnish (optional)
""",instructions: """
1. In a large bowl, combine mixed fruits.
2. In a small bowl, whisk together orange juice and honey.
3. Pour the dressing over the fruit salad and toss to coat.
4. Garnish with mint leaves, if desired.
""",
),
  Meal(
    mealName: 'Mashed Potatoes',
    cookingTime: 30,
    imagePath: 'assets/images/mashedpotatoes.png',
    directions: 'Directions for Mashed Potatoes...',
    filters: [true, false, true, true],
    type: 'Oriental',
    ingredients: """
* 4 russet potatoes, peeled and cubed
* 1/4 cup butter
* 1/2 cup milk (or more, as needed)
* Salt and pepper to taste
* Optional: Chopped chives, sour cream, or grated cheese for garnish
""",
    instructions: """
1. In a large pot, cover potatoes with cold water and bring to a boil. Cook for 15-20 minutes, or until tender.
2. Drain potatoes and return them to the pot.
3. Mash potatoes with a potato masher or hand mixer until smooth.
4. Stir in butter and milk, a little at a time, until desired consistency is reached.
5. Season with salt and pepper to taste.
6. Serve immediately, garnished with chopped chives, sour cream, or grated cheese, if desired.
""",
  ),
  Meal(
    mealName: 'BBQ Ribs',
    cookingTime: 120,
    imagePath: 'assets/images/bbqribs.png',
    directions: 'Directions for BBQ Ribs...',
    filters: [false, false, false, false],
    type: 'American',
    ingredients: """
* 2 racks baby back ribs
* 1 tablespoon olive oil
* 1 onion, chopped
* 2 cloves garlic, minced
* 1 (14.5 oz) can diced tomatoes, undrained
* 1 (1 cup) bottle barbecue sauce
* 1/2 cup apple cider vinegar
* 1/4 cup brown sugar
* 1 tablespoon Dijon mustard
* Salt and pepper to taste
""",
    instructions: """
1. Preheat oven to 300°F (150°C).
2. Season ribs with salt and pepper. Heat olive oil in a large Dutch oven over medium heat. Sear ribs on all sides until browned.
3. Remove ribs from the pot. Add onion and garlic to the pot and cook until softened, about 5 minutes.
4. Stir in diced tomatoes, barbecue sauce, apple cider vinegar, brown sugar, and Dijon mustard. Bring to a simmer.
5. Return ribs to the pot, nestling them in the sauce. Cover and bake for 2-2 1/2 hours, or until ribs are tender and falling off the bone.
6. Uncover the pot and increase oven temperature to 400°F (200°C). Broil for 5-10 minutes, or until the sauce is caramelized and slightly thickened.
7. Serve with your favorite BBQ sides.
""",
  ),
  Meal(
    mealName: 'Ice Cream Sundae',
    cookingTime: 5,
    imagePath: 'assets/images/sundae.png',
    directions: 'Directions for Ice Cream Sundae...',
    filters: [false, true, false, false],
    type: 'American',
    ingredients: """
* 2 scoops vanilla ice cream
* 1/4 cup chocolate syrup
* 1/4 cup whipped cream
* Maraschino cherry (optional)
* Chopped nuts (optional)
* Sprinkles (optional)
""",
    instructions: """
1. In an ice cream dish, place 2 scoops of vanilla ice cream.
2. Drizzle with chocolate syrup.
3. Top with whipped cream, maraschino cherry, chopped nuts, and sprinkles (optional).
4. Enjoy!
""",
  ),
];