class DrinkModel {
  final String image, name, title;

  DrinkModel({required this.image, required this.title, required this.name});
  static List<DrinkModel> drinks = [
    DrinkModel(
      image: 'assets/drinks/Banana.png',
      name: 'Banana',
      title: '20 Cups of Different Flavors',
    ),
    DrinkModel(
      image: 'assets/drinks/Chocolate.png',
      name: 'Chocolate',
      title: '20 Cups of Different Flavors',
    ),
    DrinkModel(
      image: 'assets/drinks/Strawberry.png',
      name: 'Strawberry',
      title: '20 Cups of Different Flavors',
    ),
    DrinkModel(
      image: 'assets/drinks/Brownie Island.png',
      name: 'Brownie Island',
      title: '20 Cups of Different Flavors',
    ),
    DrinkModel(
      image: 'assets/drinks/Peanut Butter.png',
      name: 'Peanut Butter',
      title: '20 Cups of Different Flavors',
    ),
    DrinkModel(
      image: 'assets/drinks/carmel.png',
      name: 'Carmel',
      title: '20 Cups of Different Flavors',
    ),
    DrinkModel(
      image: 'assets/drinks/Salted Caramel.png',
      name: 'Salted Caramel',
      title: '20 Cups of Different Flavors',
    ),
  ];
}
