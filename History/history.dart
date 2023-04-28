import 'dart:math';

void main() {
  final foodItems = [
    'Zinger Burger',
    'Pizza',
    'Broast',
    'hawarma',
    'BBQ',
    'Chicken Tikka',
    'Chapli Kabab'
  ];
  final drinkItems = [
    'Green Tea',
    'Coffee',
    'Tea',
    'Pepsi',
    'Lassi',
    'Watermelon Juice',
    'Mango Shak'
  ];
  final random = Random();

  //history of food orders
  final orderHistory = <String, List<String>>{};

  // random orders store in history map
  for (var i = 1; i <= 10; i++) {
    final orderItems = <String>[];
    final numFoodItems = random.nextInt(2) + 1;
    // randomly selected food/drimk
    for (var j = 0; j < numFoodItems; j++) {
      orderItems.add(foodItems[random.nextInt(foodItems.length)]);
    }
    final numDrinkItems = random.nextInt(2) + 1;
    for (var k = 0; k < numDrinkItems; k++) {
      orderItems.add(drinkItems[random.nextInt(drinkItems.length)]);
    }
    // name for customer
    final customerName = 'Customer ${random.nextInt(100)}';
    // order to the history map
    orderHistory[customerName] = orderItems;
  }

  // Print order history
  for (final customerName in orderHistory.keys) {
    final orderItems = orderHistory[customerName]!;
    final orderString = orderItems.join(', ');
    print('$customerName ordered: $orderString');
  }
}
