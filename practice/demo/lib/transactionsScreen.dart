import 'package:flutter/material.dart';



class TransactionsScreen extends StatelessWidget {
  final List<Map<String, dynamic>> transactions = [
    {"icon": Icons.medical_services, "category": "Medicine", "amount": 500},
    {"icon": Icons.fastfood, "category": "Food", "amount": 650},
    {"icon": Icons.shopping_bag, "category": "Shopping", "amount": 325},
    {"icon": Icons.local_gas_station, "category": "Fuel", "amount": 600},
    {"icon": Icons.movie, "category": "Entertainment", "amount": 475},
  ];

   TransactionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("November 2024"),
        backgroundColor: Colors.teal,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: transactions.length,
        itemBuilder: (context, index) {
          final transaction = transactions[index];
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            padding: const EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.shade300,
                  blurRadius: 6.0,
                  spreadRadius: 2.0,
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.teal.shade100,
                      child: Icon(
                        transaction["icon"],
                        color: Colors.teal,
                      ),
                    ),
                    const SizedBox(width: 16.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction["category"],
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Lorem ipsum is simply dummy text",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                        const Text(
                          "3 June | 11:50 AM",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  "₹${transaction["amount"]}",
                  style: const TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.teal,
        child: const Icon(Icons.add),
      ),
    );
  }
}
