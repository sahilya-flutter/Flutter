import 'package:assigment2/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ShoppingCartScreen extends StatelessWidget {
  final CartController cartController = Get.put(CartController());

  ShoppingCartScreen({super.key});

  // List of different background colors for ListView items
  final List<Color> itemColors = [
    Colors.blue.shade200,
    Colors.green.shade200,
    Colors.red.shade200,
    Colors.orange.shade200,
    Colors.purple.shade200,
  ];

  // List of shoe image paths
  final List<String> shoeImages = [
    "assets/shoes.jpg",
    "assets/shoes1.jpg",
    "assets/shoes2.jpg",
    "assets/shoes3.jpg",
    "assets/shoes4.jpg",
    "assets/shoes5.jpg",
    "assets/shoes6.jpg",
  ];

  // List of shoe names
  final List<String> shoeNames = [
    'Nike Air Max',
    'Adidas Ultraboost',
    'Puma RS-X',
    'Reebok Classic',
    'New Balance 574',
    'Converse All Star',
    'Vans Old Skool'
  ];

  // List of descriptions
  final List<String> shoeDescriptions = [
    'Classic comfort with modern appeal.',
    'Run in style with boosted performance.',
    'Bold design for the fashion-forward.',
    'Timeless style, ultimate comfort.',
    'Cushioned support for everyday wear.',
    'Iconic sneakers loved by all.',
    'Skater’s favorite, versatile and cool.'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text('My cart', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.purpleAccent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: GetBuilder<CartController>(
              builder: (controller) => ListView.builder(
                itemCount:
                    shoeNames.length, // Set count to match shoeNames length
                itemBuilder: (context, index) {
                  // Cycle through the colors using modulo operator
                  final color = itemColors[index % itemColors.length];
                  return _buildCartItem(
                    shoeNames[index], // Use name from list
                    shoeImages[index], // Use image from list
                    100.00 + index * 50, // Example pricing logic
                    shoeDescriptions[index], // Use description from list
                    color,
                  );
                },
              ),
            ),
          ),
          _buildOrderSummary(),
        ],
      ),
    );
  }

  Widget _buildCartItem(String name, String imagePath, double price,
      String description, Color color) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color, // Set the background color to the dynamic color
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(12),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage(
                      imagePath), // Use imagePath for each shoe image
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border))
                  ],
                ),
                Text(
                  description,
                  style: const TextStyle(fontSize: 14, color: Colors.black),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    Text(
                      '\$${price.toStringAsFixed(2)}',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      icon: const Icon(Icons.remove),
                      onPressed: () {
                        cartController.removeItem(name);
                      },
                    ),
                    GetBuilder<CartController>(
                      builder: (controller) => Text(
                        '${controller.getItemCount(name)}',
                        style: const TextStyle(fontSize: 16),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.add),
                      onPressed: () {
                        cartController.addItem(name, price);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildOrderSummary() {
    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          GetBuilder<CartController>(
            builder: (controller) => _buildSummaryRow(
              'Subtotal:',
              '\$${controller.subtotal.toStringAsFixed(2)}',
            ),
          ),
          const Divider(),
          _buildSummaryRow('Delivery Fee:', '\$5.00'),
          const Divider(),
          _buildSummaryRow('Discount:', '40%'),
          const SizedBox(height: 16),
          GetBuilder<CartController>(
            builder: (controller) => ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 16),
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {},
              child: Text(
                'Checkout for \$${(controller.subtotal * 0.6 + 5).toStringAsFixed(2)}',
                style: const TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSummaryRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: const TextStyle(fontSize: 16)),
          Text(value,
              style:
                  const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
