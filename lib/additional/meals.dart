class Meal {
  final String mealName;
  final String cookingTime;
  final String imagePath;
  final String directions;
  //gluten-free, lactose-free, vegan, healthy or sm
  final List<bool> attributes;
  final String type;
  Meal({
    required this.mealName,
    required this.cookingTime,
    required this.imagePath,
    required this.directions,
    required this.attributes,
    required this.type,
  });
}