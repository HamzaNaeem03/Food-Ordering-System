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
    '7': "Limka Drink",
    '8': "Faluda",
    '9': "Watermelon Juice",
    '10': "Mango Shake"
  };

  Map<String, int> prices = {
    "Zinger Burger": 250,
    "Pizza": 700,
    "Broast": 350,
    "Shawarma": 100,
    "Karahi": 1250,
    "Malai Boti": 600,
    "Chicken Tikka": 300,
    "BBQ": 350,
    "French Fries": 100,
    "Chapli Kabab": 40,
    "Coffee": 120,
    "Tea": 60,
    "Green Tea": 70,
    "Pepsi": 70,
    "Sprite": 70,
    "Lassi": 100,
    "Limka Drink": 35,
    "Faluda": 100,
    "Watermelon Juice": 50,
    "Mango Shake": 150
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
