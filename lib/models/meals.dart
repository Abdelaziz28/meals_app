
class Meal {
  final String mealName;
  final int cookingTime;
  final String imagePath;
  final String directions;
  //gluten-free, lactose-free, vegan, healthy or sm
  final List<bool> filters;
  final String type;
  final bool favourite;
  Meal({
    required this.mealName,
    required this.cookingTime,
    required this.imagePath,
    required this.directions,
    required this.filters,
    required this.type,
    required this.favourite,
  });
}
final List<bool> filters =[false,false,false,false];
final List<Meal> allMeals = [
  Meal(
    mealName: 'Chicken Alfredo',
    cookingTime: 20,
    imagePath: 'assets/images/pasta.jpg',
    directions: 'Directions for Chicken Alfredo...',
    filters: [false, true, false, false],
    type: 'Italian',
    favourite: true
  ),
  Meal(
    mealName: 'Vegetable Stir Fry',
    cookingTime: 15,
    imagePath: 'assets/images/stirfry.png',
    directions: 'Directions for Vegetable Stir Fry...',
    filters: [true, false, true, true],
    type: 'Oriental',
    favourite: false
  ),
  Meal(
    mealName: 'Beef Tacos',
    cookingTime: 30,
    imagePath: 'assets/images/tacos.png',
    directions: 'Directions for Beef Tacos...',
    filters: [false, false, false, false],
    type: 'American',
    favourite: true
  ),
  Meal(
    mealName: 'Chocolate Cake',
    cookingTime: 60,
    imagePath: 'assets/images/chocolate-cake.png',
    directions: 'Directions for Chocolate Cake...',
    filters: [false, true, false, false],
    type: 'American',
    favourite: false
  ),
  Meal(
    mealName: 'Garden Salad',
    cookingTime: 10,
    imagePath: 'assets/images/salad.png',
    directions: 'Directions for Garden Salad...',
    filters: [true, false, true, true],
    type: 'American',
    favourite: false
  ),
  Meal(
    mealName: 'Pepperoni Pizza',
    cookingTime: 25,
    imagePath: 'assets/images/pizza.png',
    directions: 'Directions for Pepperoni Pizza...',
    filters: [false, false, false, false],
    type: 'Italian',
    favourite: false
  ),
  Meal(
    mealName: 'Fruit Salad',
    cookingTime: 15,
    imagePath: 'assets/images/fruit_salad.png',
    directions: 'Directions for Fruit Salad...',
    filters: [true, false, true, true],
    type: 'American',
    favourite: true
  ),
  Meal(
    mealName: 'Mashed Potatoes',
    cookingTime: 30,
    imagePath: 'assets/images/mashedpotatoes.png',
    directions: 'Directions for Mashed Potatoes...',
    filters: [true, false, true, true],
    type: 'Oriental',
    favourite: false
  ),
  Meal(
    mealName: 'BBQ Ribs',
    cookingTime: 120,
    imagePath: 'assets/images/bbqribs.png',
    directions: 'Directions for BBQ Ribs...',
    filters: [false, false, false, false],
    type: 'Oriental',
    favourite: false
  ),
  Meal(
    mealName: 'Ice Cream Sundae',
    cookingTime: 5,
    imagePath: 'assets/images/sundae.png',
    directions: 'Directions for Ice Cream Sundae...',
    filters: [false, true, false, false],
    type: 'American',
    favourite: false
  ),
];


