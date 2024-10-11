import 'package:get/get.dart';

class CartController extends GetxController {
  // Stores the items in the cart
  var items = {}.obs;

  // Add item to the cart
  void addItem(String name, double price) {
    if (items.containsKey(name)) {
      items[name]['quantity'] += 1;
    } else {
      items[name] = {
        'price': price,
        'quantity': 1,
      };
    }
    update(); // Update the GetBuilder when an item is added
  }

  // Remove item from the cart
  void removeItem(String name) {
    if (items.containsKey(name) && items[name]['quantity'] > 1) {
      items[name]['quantity'] -= 1;
    } else {
      items.remove(name);
    }
    update(); // Update the GetBuilder when an item is removed
  }

  // Calculate the subtotal of the cart
  double get subtotal => items.entries
      .map((item) => item.value['price'] * item.value['quantity'])
      .fold(0, (sum, value) => sum + value);

  // Get the quantity of a specific item
  int getItemCount(String name) {
    if (items.containsKey(name)) {
      return items[name]['quantity'];
    }
    return 0;
  }
}
