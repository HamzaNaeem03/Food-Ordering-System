class Eatables {
  Map<String, String> Foods = {
    '1': "Zinger Burger",
    '2': "Pizza",
    '3': "Broast",
    '4': "Shawarma",
    '5': "Karahi",
    '6': "Malai Boti",
    '7': "Chicken Tikka",
    '8': "BBQ",
    '9': "French Fries",
    '10': "Chapli Kabab"
  };
  Map<String, String> Drinks = {
    '1': "Coffee",
    '2': "Tea",
    '3': "Green Tea",
    '4': "Pepsi",
    '5': "Sprite",
    '6': "Lassi",
    '7': "Limka",
    '8': "Faluda",
    '9': "Watermelon Juice",
    '10': "Mango Shake"
  };

  void show_foodlist() {
    print("*******");
    print("*Foods*");
    print("*******");
    for (var entry in Foods.entries) {
      print('${entry.key}: ${entry.value}');
    }
  }

  void show_drinklist() {
    print("********");
    print("*Drinks*");
    print("********");
    for (var entry in Drinks.entries) {
      print('${entry.key}: ${entry.value}');
    }
  }
}
