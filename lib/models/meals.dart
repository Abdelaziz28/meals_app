class Meal {
  final String mealName;
  final int cookingTime;
  final String imagePath;
  final String directions;
  //gluten-free, lactose-free, vegan, healthy or sm
  final List<bool> filters;
  final String type;
  bool favourite;
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
    ingredients: 
      "* 1 pound boneless, skinless chicken breasts, cut into bite-sized pieces\n"
      "* 1 tablespoon olive oil\n"
      "* 1/2 cup butter\n"
      "* 1/2 cup all-purpose flour\n"
      "* 4 cups chicken broth\n"
      "* 1 cup heavy cream\n"
      "* 1/2 cup grated Parmesan cheese\n"
      "* 1/4 cup grated Romano cheese\n"
      "* 1/4 teaspoon salt\n"
      "* 1/8 teaspoon black pepper\n"
      "* Fresh parsley, chopped (optional)",
    instructions: 
      "1. Cook the chicken in olive oil over medium heat until golden brown. Set aside.\n"
      "2. Melt butter in a large saucepan over medium heat. Whisk in flour and cook for 1 minute.\n"
      "3. Gradually whisk in chicken broth, then bring to a simmer. Cook until thickened, about 5 minutes.\n"
      "4. Stir in heavy cream, Parmesan cheese, Romano cheese, salt, and pepper.\n"
      "5. Add the cooked chicken back to the pan and heat through.\n"
      "6. Serve over cooked pasta and garnish with fresh parsley, if desired.",
  ),
  Meal(
    mealName: 'Vegetable Stir Fry',
    cookingTime: 15,
    imagePath: 'assets/images/stirfry.png',
    directions: 'Directions for Vegetable Stir Fry...',
    filters: [true, false, true, true],
    type: 'Oriental',
    ingredients: 
      "* 2 tablespoons vegetable oil\n"
      "* 1 onion, sliced\n"
      "* 2 cloves garlic, minced\n"
      "* 1 red bell pepper, sliced\n"
      "* 1 green bell pepper, sliced\n"
      "* 1 broccoli floret, chopped\n"
      "* 1 cup snap peas\n"
      "* 1/2 cup carrots, sliced\n"
      "* 1/4 cup soy sauce\n"
      "* 1 tablespoon brown sugar\n"
      "* 1 tablespoon cornstarch\n"
      "* 1/4 cup water\n"
      "* Cooked rice or noodles (for serving)",
    instructions: 
      "1. Heat oil in a large skillet or wok over medium-high heat. Add onion and cook until softened, about 5 minutes.\n"
      "2. Add garlic and cook for 30 seconds, until fragrant.\n"
      "3. Add bell peppers, broccoli, snap peas, and carrots. Stir-fry for 5-7 minutes, or until vegetables are tender-crisp.\n"
      "4. In a small bowl, whisk together soy sauce, brown sugar, cornstarch, and water.\n"
      "5. Pour the sauce into the pan with the vegetables and stir-fry for 1-2 minutes, or until the sauce thickens.\n"
      "6. Serve over cooked rice or noodles.",
  ),
  Meal(
    mealName: 'Beef Tacos',
    cookingTime: 30,
    imagePath: 'assets/images/tacos.png',
    directions: 'Directions for Beef Tacos...',
    filters: [false, false, false, false],
    type: 'American',
    ingredients: 
      "* 1 pound ground beef\n"
      "* 1 tablespoon olive oil\n"
      "* 1 onion, chopped\n"
      "* 1 green bell pepper, chopped\n"
      "* 1 packet taco seasoning\n"
      "* 1 (15 oz) can diced tomatoes, undrained\n"
      "* 1/2 cup water\n"
      "* Taco shells\n"
      "* Your favorite taco toppings (shredded cheese, lettuce, tomatoes, sour cream, salsa, etc.)",
    instructions: 
      "1. Heat olive oil in a large skillet over medium heat. Add ground beef and cook until browned, breaking it up with a spoon as it cooks.\n"
      "2. Drain off any excess fat.\n"
      "3. Add onion and bell pepper to the pan and cook until softened, about 5 minutes.\n"
      "4. Stir in taco seasoning, diced tomatoes, and water. Bring to a boil, then reduce heat and simmer for 10 minutes.\n"
      "5. Serve the taco filling in warmed taco shells with your favorite toppings.",
  ),
Meal(
mealName: 'Chocolate Cake',
cookingTime: 60,
imagePath: 'assets/images/chocolate-cake.png',
directions: 'Directions for Chocolate Cake...',
filters: [false, true, false, false],
type: 'American',
ingredients: 
  "* 1 1/2 cups all-purpose flour\n"
  "* 3/4 cup unsweetened cocoa powder\n"
  "* 1 1/2 teaspoons baking soda\n"
  "* 1/2 teaspoon salt\n"
  "* 1 cup (2 sticks) unsalted butter, softened\n"
  "* 1 1/2 cups granulated sugar\n"
  "* 3 large eggs\n"
  "* 1 teaspoon vanilla extract\n"
  "* 1 cup buttermilk",
instructions: 
  "1. Preheat oven to 350°F (175°C). Grease and flour two 8-inch round cake pans.\n"
  "2. In a medium bowl, whisk together flour, cocoa powder, baking soda, and salt.\n"
  "3. In a large bowl, cream together butter and sugar until light and fluffy. Beat in eggs one at a time, then stir in vanilla extract.\n"
  "4. Alternately add the dry ingredients and buttermilk to the wet ingredients, mixing until just combined.\n"
  "5. Divide batter evenly between the prepared cake pans.\n"
  "6. Bake for 30-35 minutes, or until a toothpick inserted into the center comes out clean.\n"
  "7. Let cakes cool in pans for 10 minutes, then transfer to a wire rack to cool completely.\n"
  "8. Frost with your favorite chocolate frosting (optional).",
),
Meal(
mealName: 'Garden Salad',
cookingTime: 10,
imagePath: 'assets/images/salad.png',
directions: 'Directions for Garden Salad...',
filters: [true, false, true, true],
type: 'Oriental',
ingredients: 
  "* 4 cups mixed greens\n"
  "* 1 cucumber, sliced\n"
  "* 1 tomato, sliced\n"
  "* 1 red onion, sliced\n"
  "* 1/2 cup crumbled feta cheese\n"
  "* 1/4 cup olive oil\n"
  "* 2 tablespoons balsamic vinegar\n"
  "* 1 teaspoon dried oregano\n"
  "* Salt and pepper to taste",
instructions: 
  "1. In a large bowl, combine mixed greens, cucumber, tomato, and red onion.\n"
  "2. In a small bowl, whisk together olive oil, balsamic vinegar, and oregano.\n"
  "3. Pour dressing over the salad and toss to coat.\n"
  "4. Sprinkle with feta cheese, salt, and pepper to taste.",
),
Meal(
mealName: 'Pepperoni Pizza',
cookingTime: 25,
imagePath: 'assets/images/pizza.png',
directions: 'Directions for Pepperoni Pizza...',
filters: [false, false, false, false],
type: 'Italian',
ingredients: 
  "* 1 store-bought pizza dough (or your favorite pizza dough recipe)\n"
  "* 1/2 cup pizza sauce\n"
  "* 1 cup shredded mozzarella cheese\n"
  "* 1/2 cup pepperoni slices\n"
  "* Optional toppings: Italian sausage, mushrooms, green peppers, onions, etc.",
instructions: 
  "1. Preheat oven to 425°F (220°C).\n"
  "2. Unroll pizza dough on a lightly floured surface. Stretch dough to fit a 12-inch pizza pan.\n"
  "3. Spread pizza sauce evenly over the dough.\n"
  "4. Top with mozzarella cheese, pepperoni, and any other desired toppings.\n"
  "5. Bake for 15-20 minutes, or until the crust is golden brown and the cheese is melted and bubbly.\n"
  "6. Let cool slightly before slicing and serving.",
),
Meal(
mealName: 'Fruit Salad',
cookingTime: 15,
imagePath: 'assets/images/fruit_salad.png',
directions: 'Directions for Fruit Salad...',
filters: [true, false, true, true],
type: 'American',
ingredients: 
  "* 2 cups mixed fruits (such as strawberries, blueberries, grapes, melon, etc.)\n"
  "* 1/4 cup orange juice\n"
  "* 1 tablespoon honey\n"
  "* Mint leaves for garnish (optional)",
instructions: 
  "1. In a large bowl, combine mixed fruits.\n"
  "2. In a small bowl, whisk together orange juice and honey.\n"
  "3. Pour the dressing over the fruit salad and toss to coat.\n"
  "4. Garnish with mint leaves, if desired.",
),
  Meal(
    mealName: 'Mashed Potatoes',
    cookingTime: 30,
    imagePath: 'assets/images/mashedpotatoes.png',
    directions: 'Directions for Mashed Potatoes...',
    filters: [true, false, true, true],
    type: 'Oriental',
    ingredients: 
      "* 4 russet potatoes, peeled and cubed\n"
      "* 1/4 cup butter\n"
      "* 1/2 cup milk (or more, as needed)\n"
      "* Salt and pepper to taste\n"
      "* Optional: Chopped chives, sour cream, or grated cheese for garnish",
    instructions: 
      "1. In a large pot, cover potatoes with cold water and bring to a boil. Cook for 15-20 minutes, or until tender.\n"
      "2. Drain potatoes and return them to the pot.\n"
      "3. Mash potatoes with a potato masher or hand mixer until smooth.\n"
      "4. Stir in butter and milk, a little at a time, until desired consistency is reached.\n"
      "5. Season with salt and pepper to taste.\n"
      "6. Serve immediately, garnished with chopped chives, sour cream, or grated cheese, if desired.",
  ),
  Meal(
    mealName: 'BBQ Ribs',
    cookingTime: 120,
    imagePath: 'assets/images/bbqribs.png',
    directions: 'Directions for BBQ Ribs...',
    filters: [false, false, false, false],
    type: 'American',
    ingredients: 
      "* 2 racks baby back ribs\n"
      "* 1 tablespoon olive oil\n"
      "* 1 onion, chopped\n"
      "* 2 cloves garlic, minced\n"
      "* 1 (14.5 oz) can diced tomatoes, undrained\n"
      "* 1 (1 cup) bottle barbecue sauce\n"
      "* 1/2 cup apple cider vinegar\n"
      "* 1/4 cup brown sugar\n"
      "* 1 tablespoon Dijon mustard\n"
      "* Salt and pepper to taste",
    instructions: 
      "1. Preheat oven to 300°F (150°C).\n"
      "2. Season ribs with salt and pepper. Heat olive oil in a large Dutch oven over medium heat. Sear ribs on all sides until browned.\n"
      "3. Remove ribs from the pot. Add onion and garlic to the pot and cook until softened, about 5 minutes.\n"
      "4. Stir in diced tomatoes, barbecue sauce, apple cider vinegar, brown sugar, and Dijon mustard. Bring to a simmer.\n"
      "5. Return ribs to the pot, nestling them in the sauce. Cover and bake for 2-2 1/2 hours, or until ribs are tender and falling off the bone.\n"
      "6. Uncover the pot and increase oven temperature to 400°F (200°C). Broil for 5-10 minutes, or until the sauce is caramelized and slightly thickened.\n"
      "7. Serve with your favorite BBQ sides.",
  ),
  Meal(
    mealName: 'Ice Cream Sundae',
    cookingTime: 5,
    imagePath: 'assets/images/sundae.png',
    directions: 'Directions for Ice Cream Sundae...',
    filters: [false, true, false, false],
    type: 'American',
    ingredients: 
      "* 2 scoops vanilla ice cream\n"
      "* 1/4 cup chocolate syrup\n"
      "* 1/4 cup whipped cream\n"
      "* Maraschino cherry (optional)\n"
      "* Chopped nuts (optional)\n"
      "* Sprinkles (optional)",
    instructions: 
      "1. In an ice cream dish, place 2 scoops of vanilla ice cream.\n"
      "2. Drizzle with chocolate syrup.\n"
      "3. Top with whipped cream, maraschino cherry, chopped nuts, and sprinkles (optional).\n"
      "4. Enjoy!",
  ),
];
