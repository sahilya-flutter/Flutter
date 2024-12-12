import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Payments',
      home: PaymentsScreen(),
    );
  }
}

class PaymentsScreen extends StatefulWidget {
  const PaymentsScreen({super.key});

  @override
  _PaymentsScreenState createState() => _PaymentsScreenState();
}

class _PaymentsScreenState extends State<PaymentsScreen> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Payments'),
      ),
      body: const Column(
        children: [
          TabBar(
            tabs: [
              Tab(text: 'Overview'),
              Tab(text: 'Payment history'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                OverviewTab(),
                PaymentHistoryTab(),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.request_quote),
            label: 'Requests',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.payment),
            label: 'Payments',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}

class OverviewTab extends StatelessWidget {
  const OverviewTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HowPaymentWorks(),
          const SizedBox(height: 16.0),
          const PayYourWay(),
          const SizedBox(height: 16.0),
          const HappinessGuaranteed(),
          const Spacer(),
          ElevatedButton(
            onPressed: () {},
            child: const Text('Send a payment'),
          ),
        ],
      ),
    );
  }
}

class HowPaymentWorks extends StatelessWidget {
  const HowPaymentWorks({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'How payment works',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.construction, color: Colors.blue),
            SizedBox(width: 8.0),
            Expanded(
              child: Text(
                'Complete your project\nHire a pro for any home project, big or small',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PayYourWay extends StatelessWidget {
  const PayYourWay({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Pay your way',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.credit_card, color: Colors.blue),
            SizedBox(width: 8.0),
            Expanded(
              child: Text(
                'Securely pay with a credit card or digital wallet. Or, choose financing for low monthly payments',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class HappinessGuaranteed extends StatelessWidget {
  const HappinessGuaranteed({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Happiness guaranteed',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(Icons.check_circle, color: Colors.blue),
            SizedBox(width: 8.0),
            Expanded(
              child: Text(
                'When you book and pay with us, your projects are covered',
                style: TextStyle(fontSize: 16.0),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class PaymentHistoryTab extends StatelessWidget {
  const PaymentHistoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text('Payment History'),
    );
  }
}