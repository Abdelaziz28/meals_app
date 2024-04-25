class Meal {
  final String mealName;
  final int cookingTime;
  final String imagePath;
  final String directions;
  //gluten-free, lactose-free, vegan, healthy or sm
  final List<bool> attributes;
  final String type;
  final bool favourite;
  Meal({
    required this.mealName,
    required this.cookingTime,
    required this.imagePath,
    required this.directions,
    required this.attributes,
    required this.type,
    this.favourite = false,
  });
}
final List<bool> attributes =[false,false,false,false];
final List<Meal> allMeals = [
  Meal(
    mealName: 'Chicken Alfredo',
    cookingTime: 20,
    imagePath: 'assets/images/alfredo.png',
    directions: 'Directions for Chicken Alfredo...',
    attributes: [false, true, false, false],
    type: 'Main',
  ),
  Meal(
    mealName: 'Vegetable Stir Fry',
    cookingTime: 15,
    imagePath: 'assets/images/stir_fry.jpg',
    directions: 'Directions for Vegetable Stir Fry...',
    attributes: [true, false, true, true],
    type: 'Side',
  ),
  Meal(
    mealName: 'Beef Tacos',
    cookingTime: 30,
    imagePath: 'assets/images/tacos.jpg',
    directions: 'Directions for Beef Tacos...',
    attributes: [false, false, false, false],
    type: 'Main',
  ),
  Meal(
    mealName: 'Chocolate Cake',
    cookingTime: 60,
    imagePath: 'assets/images/chocolate_cake.jpg',
    directions: 'Directions for Chocolate Cake...',
    attributes: [false, true, false, false],
    type: 'Dessert',
  ),
  Meal(
    mealName: 'Garden Salad',
    cookingTime: 10,
    imagePath: 'assets/images/salad.jpg',
    directions: 'Directions for Garden Salad...',
    attributes: [true, false, true, true],
    type: 'Side',
  ),
  Meal(
    mealName: 'Pepperoni Pizza',
    cookingTime: 25,
    imagePath: 'assets/images/pizza.jpg',
    directions: 'Directions for Pepperoni Pizza...',
    attributes: [false, false, false, false],
    type: 'Main',
  ),
  Meal(
    mealName: 'Fruit Salad',
    cookingTime: 15,
    imagePath: 'assets/images/fruit_salad.jpg',
    directions: 'Directions for Fruit Salad...',
    attributes: [true, false, true, true],
    type: 'Dessert',
  ),
  Meal(
    mealName: 'Mashed Potatoes',
    cookingTime: 30,
    imagePath: 'assets/images/mashed_potatoes.jpg',
    directions: 'Directions for Mashed Potatoes...',
    attributes: [true, false, true, true],
    type: 'Side',
  ),
  Meal(
    mealName: 'BBQ Ribs',
    cookingTime: 120,
    imagePath: 'assets/images/ribs.jpg',
    directions: 'Directions for BBQ Ribs...',
    attributes: [false, false, false, false],
    type: 'Main',
  ),
  Meal(
    mealName: 'Ice Cream Sundae',
    cookingTime: 5,
    imagePath: 'assets/images/sundae.jpg',
    directions: 'Directions for Ice Cream Sundae...',
    attributes: [false, true, false, false],
    type: 'Dessert',
  ),
];


