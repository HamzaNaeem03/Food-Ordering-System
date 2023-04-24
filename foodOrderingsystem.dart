import 'dart:io';
import 'dart:core';

void main() {
  Map<String, int> orderedItem = {};
// Map of 20 Pakistani dishes with Prices in PKR
  Map<String, int> pakistaniDishes = {
    "Biryani": 250,
    "Karhai": 300,
    "Haleem": 200,
    "Nihari": 220,
    "Saag": 180,
    "Chapli Kabab": 150,
    "Seekh Kabab": 100,
    "Chicken Tikka": 200,
    "Qorma": 250,
    "Paye": 180,
    "Lahori Chargha": 350,
    "Pakistani Pulao": 220,
    "Aloo Keema": 150,
    "Chicken Karahi": 300,
    "Daal Chawal": 120,
    "Sindhi Biryani": 280,
    "Samosa Chaat": 100,
    "Aloo Tikki": 80,
    "Chana Chaat": 150,
    "Nargisi Koftay": 200,
  };

// Map of 20 fast food items with Prices in PKR
  Map<String, int> fastFoodItems = {
    "Beef Burger": 150,
    "Chicken Burger": 120,
    "Zinger Burger": 180,
    "Pizza (Regular)": 400,
    "Pizza (Large)": 800,
    "Fried Chicken": 220,
    "French Fries": 100,
    "Chicken Nuggets": 150,
    "Onion Rings": 80,
    "Hot Dog": 120,
    "Cheeseburger": 180,
    "Fried Fish": 250,
    "Popcorn Chicken": 180,
    "BBQ Sandwich": 150,
    "Chicken Shawarma": 200,
    "Falafel Wrap": 180,
    "Club Sandwich": 250,
    "Chicken Wings": 220,
    "Quesadilla": 280,
    "Nachos": 200,
  };

// Map of 20 famous Chinese food items with Prices in PKR
  Map<String, int> chineseFoodItems = {
    "Fried Rice": 180,
    "Chicken Chow Mein": 200,
    "Beef Chow Mein": 250,
    "Hot and Sour Soup": 150,
    "Wonton Soup": 200,
    "Dumplings (Steamed)": 250,
    "Dumplings (Fried)": 300,
    "Spring Rolls": 120,
    "Egg Rolls": 100,
    "Shrimp Fried Rice": 300,
    "Beef Fried Rice": 250,
    "Shrimp Chow Mein": 300,
    "Szechuan Chicken": 220,
    "Sweet and Sour soup ": 200,
    "Orange Chicken": 250,
  };

// Map of 20 famous Arabic dishes with Prices in PKR
  Map<String, int> arabicFoodItems = {
    "Hummus with Pita Bread": 150,
    "Falafel Plate": 200,
    "Chicken Shawarma Plate": 250,
    "Lamb Kebab Plate": 300,
    "Beef Kebab Plate": 200,
    "Fattoush Salad": 150,
    "Beef Shawarma": 220,
    "Lamb Chops": 350,
    "Mixed Grill": 400,
    "Chicken Kabsa": 250,
    "Falafel Sandwich": 100,
    "Beef Shawarma Sandwich": 180,
    "Lamb Kofta": 300,
    "Lamb Shawarma": 280,
    "Harees": 200,
    "Mandi Rice": 220,
  };

// Map of 20 drinks, shakes, and beverages with Prices in PKR
  Map<String, int> beverages = {
    "Orange Juice": 100,
    "Mango Shake": 150,
    "Coca-Cola": 80,
    "Sprite": 80,
    "Fanta": 80,
    "Mineral Water": 100,
    "Lemonade": 80,
    "Iced Tea": 100,
    "Banana Shake": 120,
    "Strawberry Shake": 120,
    "Chocolate Shake": 120,
    "Vanilla Shake": 120,
    "Caramel Macchiato": 150,
    "Cappuccino": 150,
    "Latte": 150,
    "Espresso": 100,
    "Green Tea": 80,
    "Black Coffee": 100,
    "Mojito": 120,
    "Pina Colada": 150,
    "Margarita": 180,
    "Blue Lagoon": 150,
    "Sangria": 200,
  };

// Map of 20 ice creams and desserts with Prices in PKR
  Map<String, int> desserts = {
    "Chocolate Sundae": 120,
    "Strawberry Sundae": 120,
    "Vanilla Ice Cream": 100,
    "Chocolate Ice Cream": 100,
    "Strawberry Ice Cream": 100,
    "Apple Pie ": 150,
    "Brownie Sundae": 200,
    "Cheesecake": 180,
    "Chocolate Cake": 200,
    "Carrot Cake": 180,
    "Red Velvet Cake": 200,
    "Baklava": 150,
    "Kulfi": 80,
    "Gulab Jamun": 100,
    "Ras Malai": 120,
    "Kheer": 150,
    "Fruit Trifle": 180,
    "Zarda": 100,
    "Gajar ka Halwa": 150,
  };

  void displayPakistaniDishes() {
    int index = 1;
    pakistaniDishes.forEach((key, value) {
      print("($index)          $key:  Price $value");
      index++;
    });
  }

  void displayFastFood() {
    int index = 1;
    fastFoodItems.forEach((key, value) {
      print("($index)          $key:  Price $value");
      index++;
    });
  }

  void displayChineseDishes() {
    int index = 1;
    chineseFoodItems.forEach((key, value) {
      print("($index)          $key:  Price $value");
      index++;
    });
  }

  void displayArabicDishes() {
    int index = 1;
    arabicFoodItems.forEach((key, value) {
      print("($index)          $key:  Price $value");
      index++;
    });
  }

  void displayBeverages() {
    int index = 1;
    beverages.forEach((key, value) {
      print("($index)          $key:  Price $value");
      index++;
    });
  }

  void diplayDesserts() {
    int index = 1;
    desserts.forEach((key, value) {
      print("($index)          $key:  Price $value");
      index++;
    });
    int itemInput = int.parse(stdin.readLineSync()!);

    print("$desserts[itemInput - 1]");
  }

  print("*" * 29 +
      "MENU" +
      "*" * 28 +
      "\n"
          "\t(P) Pakistani Dishes\n"
          "\t(F) Fastfood\n"
          "\t(C) Chinese Food\n"
          "\t(A) Arabic Dishes\n"
          "\t(B) Beverages\n"
          "\t(D) Dessert\n"
          "\t(E) EXIT\n" +
      "_" * 67);

  String catogeryinput = stdin.readLineSync()!.toUpperCase();
  if (catogeryinput == "P") {
    displayPakistaniDishes();
  } else if (catogeryinput == "C") {
    displayChineseDishes();
  } else if (catogeryinput == "F") {
    displayFastFood();
  } else if (catogeryinput == "A") {
    displayArabicDishes();
  } else if (catogeryinput == "B") {
    displayBeverages();
  } else if (catogeryinput == "D") {
    diplayDesserts();
  } else {
    print("Invalid Input");
  }
}
