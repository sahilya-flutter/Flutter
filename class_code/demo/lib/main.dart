// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Profile UI',
//       theme: ThemeData(
//         primarySwatch: Colors.purple,
//       ),
//       home: const ProfileScreen(),
//     );
//   }
// }

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile'),
//         centerTitle: true,
//         backgroundColor: Colors.purple,
//       ),
//       body: SafeArea(
//         child: SingleChildScrollView(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Profile Header
//               Container(
//                 color: Colors.purple,
//                 padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
//                 child: const Row(
//                   children: [
//                     CircleAvatar(
//                       radius: 40,
//                       backgroundColor: Colors.white,
//                       child: Icon(Icons.person, size: 40, color: Colors.purple),
//                     ),
//                     SizedBox(width: 16),
//                     Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'Itunuoluwa Abidoye',
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         Text(
//                           '@Itunuoluwa',
//                           style: TextStyle(
//                             color: Colors.white70,
//                             fontSize: 14,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),

//               const SizedBox(height: 16),

//               // Account Options
//               ListTile(
//                 leading: const Icon(Icons.person),
//                 title: const Text('My Account'),
//                 trailing: const Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Icon(Icons.error, color: Colors.red),
//                     SizedBox(width: 8),
//                     Icon(Icons.arrow_forward_ios, size: 16),
//                   ],
//                 ),
//                 onTap: () {},
//               ),
//               const Divider(),

//               ListTile(
//                 leading: const Icon(Icons.account_balance_wallet),
//                 title: const Text('Saved Beneficiary'),
//                 trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//                 onTap: () {},
//               ),
//               const Divider(),

//               ListTile(
//                 leading: const Icon(Icons.fingerprint),
//                 title: const Text('Face ID / Touch ID'),
//                 trailing: Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     Switch(
//                       value: false,
//                       onChanged: (value) {},
//                     ),
//                   ],
//                 ),
//                 onTap: () {},
//               ),
//               const Divider(),

//               ListTile(
//                 leading: const Icon(Icons.lock),
//                 title: const Text('Two-Factor Authentication'),
//                 trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//                 onTap: () {},
//               ),
//               const Divider(),

//               ListTile(
//                 leading: const Icon(Icons.logout),
//                 title: const Text('Log out'),
//                 trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//                 onTap: () {},
//               ),
//               const Divider(),

//               const SizedBox(height: 16),

//               // More Section
//               const Padding(
//                 padding: EdgeInsets.symmetric(horizontal: 16),
//                 child: Text(
//                   'More',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black54,
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 8),

//               ListTile(
//                 leading: const Icon(Icons.help_outline),
//                 title: const Text('Help & Support'),
//                 trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//                 onTap: () {},
//               ),
//               const Divider(),

//               ListTile(
//                 leading: const Icon(Icons.info_outline),
//                 title: const Text('About App'),
//                 trailing: const Icon(Icons.arrow_forward_ios, size: 16),
//                 onTap: () {},
//               ),
//             ],
//           ),
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
      home: Scaffold(
        appBar: AppBar(title: const Text('Fixed CrossAxisCount Grid Example')),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,       // Two items per row
            crossAxisSpacing: 16.0,  // Horizontal spacing
            mainAxisSpacing: 16.0,   // Vertical spacing
            childAspectRatio: 0.8,   // Adjust item height-to-width ratio
          ),
          itemCount: 8, // Total number of items in the grid
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: Colors.teal[100],
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  'Item $index',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
