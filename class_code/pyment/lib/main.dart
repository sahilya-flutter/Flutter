// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MainApp());
// }

// class MainApp extends StatelessWidget {
//   const MainApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: 'PAYMENT',
//       home: PaymentsScreen(),
//     );
//   }
// }

// class PaymentsScreen extends StatefulWidget {
//   const PaymentsScreen({super.key});

//   @override
//   _PaymentsScreenState createState() => _PaymentsScreenState();
// }

// class _PaymentsScreenState extends State<PaymentsScreen> {
//   // int _selectedIndex = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Payments'),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(1.5),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 Container(
//                   padding: EdgeInsets.all(5),
//                   height: 40,
//                   width: 175,
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(5)),
//                   child: const Center(
//                     child: Text(
//                       "Overview",
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ),
//                 const SizedBox(
//                   width: 2,
//                 ),
//                 Container(
//                   padding: EdgeInsets.all(5),
//                   height: 40,
//                   width: 180,
//                   decoration: BoxDecoration(
//                       border: Border.all(color: Colors.black),
//                       borderRadius: BorderRadius.circular(5)),
//                   child: const Center(
//                     child: Text(
//                       "Payment History",
//                       style: TextStyle(fontSize: 18),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             // const SizedBox(
//             //   height: 8,
//             // ),
//             ListView.builder(itemBuilder: itemBuilder),
//             Container(
//               height: 50,
//               width: 400,
//               child: const Text(
//                 "How Payment Work",
//                 style: TextStyle(fontWeight: FontWeight.bold),
//               ),
//             ),
//             Container(
//               margin: const EdgeInsets.all(5),
//               height: 100,
//               width: 300,
//               color: Colors.amber,
//             ),
//             Container(
//               margin: const EdgeInsets.all(5),
//               height: 100,
//               width: 300,
//               color: Colors.blueGrey,
//             ),
//             Container(
//               margin: const EdgeInsets.all(5),
//               height: 100,
//               width: 300,
//               color: Colors.blue,
//             ),
//             Container(
//               margin: const EdgeInsets.all(5),
//               height: 100,
//               width: 300,
//               color: Colors.deepOrange,
//             ),
//             Container(
//               margin: const EdgeInsets.all(5),
//               height: 100,
//               width: 300,
//               color: Colors.red,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: const Color(0xFF006699),
        scaffoldBackgroundColor: Colors.grey[50],
      ),
      home: const PaymentScreen(),
    );
  }
}

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            'Payments',
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontWeight: FontWeight.normal,
            ),
          ),
          // ignore: prefer_const_constructors
          bottom: TabBar(
            indicatorColor: const Color(0xFF006699),
            labelColor: const Color(0xFF006699),
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(text: 'Overview'),
              Tab(text: 'Payment history'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Overview Tab
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'How payment works',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 32),
                    _buildInfoSection(
                      icon: Icons.handshake_outlined,
                      title: 'Complete your project',
                      description:
                          'Hire a pro for any home project, big or small',
                    ),
                    const SizedBox(height: 32),
                    _buildInfoSection(
                      icon: Icons.wallet_outlined,
                      title: 'Pay your way',
                      description:
                          'Securely pay with a credit card or digital wallet. Or, choose financing for low monthly payments',
                    ),
                    const SizedBox(height: 32),
                    _buildInfoSection(
                      icon: Icons.assignment_turned_in_outlined,
                      title: 'Happiness guaranteed',
                      description:
                          'When you book and pay with us, your projects are covered',
                    ),
                    const SizedBox(height: 48),
                    // Payment Card
                    Container(
                      padding: const EdgeInsets.all(24),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            spreadRadius: 1,
                            blurRadius: 5,
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          const Text(
                            'Ready to pay for a home project?',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 16),
                          SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF006699),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 16),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                              ),
                              child: const Text(
                                'Send a payment',
                                style: TextStyle(
                                    fontSize: 16, color: Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            // Payment History Tab (Empty for now)
            const Center(child: Text('Payment History')),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color(0xFF006699),
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag_outlined),
              label: 'Requests',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.credit_card),
              label: 'Payments',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_outline),
              label: 'Account',
            ),
          ],
          currentIndex: 2, // Payments tab selected
        ),
      ),
    );
  }

  Widget _buildInfoSection({
    required IconData icon,
    required String title,
    required String description,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 48,
          color: Colors.black,
        ),
        const SizedBox(height: 16),
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 8),
        Text(
          description,
          style: TextStyle(
            fontSize: 16,
            color: Colors.grey[600],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: const Color(0xFF006699),
//         scaffoldBackgroundColor: Colors.grey[50],
//       ),
//       home: const PaymentScreen(),
//     );
//   }
// }

// class PaymentScreen extends StatelessWidget {
//   const PaymentScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       initialIndex: 1, // Start with Payment history tab
//       length: 2,
//       child: Scaffold(
//         body: NestedScrollView(
//           headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
//             return [
//               const SliverAppBar(
//                 floating: true,
//                 pinned: true,
//                 backgroundColor: Colors.white,
//                 elevation: 0,
//                 title: Text(
//                   'Payments',
//                   style: TextStyle(
//                     color: Colors.black,
//                     fontSize: 24,
//                     fontWeight: FontWeight.normal,
//                   ),
//                 ),
//                 bottom: PreferredSize(
//                   preferredSize: Size.fromHeight(48),
//                   child: Align(
//                     alignment: Alignment.centerLeft,
//                     child: TabBar(
//                       isScrollable: true,
//                       indicatorColor: Color(0xFF006699),
//                       indicatorWeight: 3,
//                       labelColor: Color(0xFF006699),
//                       unselectedLabelColor: Colors.grey,
//                       labelStyle: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.w500,
//                       ),
//                       unselectedLabelStyle: TextStyle(
//                         fontSize: 24,
//                         fontWeight: FontWeight.w500,
//                       ),
//                       tabs: [
//                         Padding(
//                           padding: EdgeInsets.only(right: 16.0),
//                           child: Tab(text: 'Overview'),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.only(right: 16.0),
//                           child: Tab(text: 'Payment history'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ];
//           },
//           body: TabBarView(
//             children: [
//               // Overview Tab
//               SingleChildScrollView(
//                 child: Padding(
//                   padding: const EdgeInsets.all(16.0),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Text(
//                         'How payment works',
//                         style: TextStyle(
//                           fontSize: 20,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       const SizedBox(height: 32),
//                       _buildInfoSection(
//                         icon: Icons.handshake_outlined,
//                         title: 'Complete your project',
//                         description:
//                             'Hire a pro for any home project, big or small',
//                       ),
//                       const SizedBox(height: 32),
//                       _buildInfoSection(
//                         icon: Icons.wallet_outlined,
//                         title: 'Pay your way',
//                         description:
//                             'Securely pay with a credit card or digital wallet. Or, choose financing for low monthly payments',
//                       ),
//                       const SizedBox(height: 32),
//                       _buildInfoSection(
//                         icon: Icons.assignment_turned_in_outlined,
//                         title: 'Happiness guaranteed',
//                         description:
//                             'When you book and pay with us, your projects are covered',
//                       ),
//                       const SizedBox(height: 48),
//                       // Payment Card
//                       Container(
//                         padding: const EdgeInsets.all(24),
//                         decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(12),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.1),
//                               spreadRadius: 1,
//                               blurRadius: 5,
//                             ),
//                           ],
//                         ),
//                         child: Column(
//                           children: [
//                             const Text(
//                               'Ready to pay for a home project?',
//                               style: TextStyle(
//                                 fontSize: 18,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             const SizedBox(height: 16),
//                             SizedBox(
//                               width: double.infinity,
//                               child: ElevatedButton(
//                                 onPressed: () {},
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0xFF006699),
//                                   padding:
//                                       const EdgeInsets.symmetric(vertical: 16),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                   ),
//                                 ),
//                                 child: const Text(
//                                   'Send a payment',
//                                   style: TextStyle(fontSize: 16),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               // Payment History Tab
//               Container(
//                 color: Colors.grey[100],
//                 child: Column(
//                   children: [
//                     Expanded(
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Text(
//                             '₹',
//                             style: TextStyle(
//                               fontSize: 48,
//                               fontWeight: FontWeight.bold,
//                               color: Colors.grey[800],
//                             ),
//                           ),
//                           const SizedBox(height: 16),
//                           Text(
//                             'No transactions available',
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.w500,
//                               color: Colors.grey[800],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     // Bottom Card
//                     Container(
//                       margin: const EdgeInsets.all(16),
//                       decoration: BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.circular(12),
//                         boxShadow: [
//                           BoxShadow(
//                             color: Colors.grey.withOpacity(0.1),
//                             spreadRadius: 1,
//                             blurRadius: 5,
//                           ),
//                         ],
//                       ),
//                       child: Padding(
//                         padding: const EdgeInsets.all(24.0),
//                         child: Column(
//                           children: [
//                             const Text(
//                               'Ready to pay for a home project?',
//                               style: TextStyle(
//                                 fontSize: 20,
//                                 fontWeight: FontWeight.w500,
//                               ),
//                             ),
//                             const SizedBox(height: 16),
//                             SizedBox(
//                               width: double.infinity,
//                               child: ElevatedButton(
//                                 onPressed: () {},
//                                 style: ElevatedButton.styleFrom(
//                                   backgroundColor: const Color(0xFF006699),
//                                   padding:
//                                       const EdgeInsets.symmetric(vertical: 16),
//                                   shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(30),
//                                   ),
//                                 ),
//                                 child: const Text(
//                                   'Start a project',
//                                   style: TextStyle(
//                                     fontSize: 16,
//                                     fontWeight: FontWeight.w500,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: const Color(0xFF006699),
//           unselectedItemColor: Colors.grey,
//           items: const [
//             BottomNavigationBarItem(
//               icon: Icon(Icons.home_outlined),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.shopping_bag_outlined),
//               label: 'Requests',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.credit_card),
//               label: 'Payments',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person_outline),
//               label: 'Account',
//             ),
//           ],
//           currentIndex: 2, // Payments tab selected
//         ),
//       ),
//     );
//   }

//   Widget _buildInfoSection({
//     required IconData icon,
//     required String title,
//     required String description,
//   }) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Icon(
//           icon,
//           size: 48,
//           color: Colors.black,
//         ),
//         const SizedBox(height: 16),
//         Text(
//           title,
//           style: const TextStyle(
//             fontSize: 18,
//             fontWeight: FontWeight.bold,
//           ),
//           textAlign: TextAlign.center,
//         ),
//         const SizedBox(height: 8),
//         Text(
//           description,
//           style: TextStyle(
//             fontSize: 16,
//             color: Colors.grey[600],
//           ),
//           textAlign: TextAlign.center,
//         ),
//       ],
//     );
//   }
// }
