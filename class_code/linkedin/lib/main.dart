import 'package:flutter/material.dart';

void main() {
  runApp(const LinkedInPostUI());
}

class LinkedInPostUI extends StatelessWidget {
  const LinkedInPostUI({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          leading: const CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.linkedin.com/posts/sahil32_shopping-cart-app-excited-to-share-activity-7248674317251624960-Vdvl?utm_source=share&utm_medium=member_desktop'), // Replace with actual image URL
          ),
          title: Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: const Icon(Icons.search, color: Colors.grey),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon:
                    const Icon(Icons.chat_bubble_outline, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.notifications, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Post Section
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(
                          'https://example.com/post_profile_image.jpg'), // Replace with actual image URL
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Sahil Maharnawar',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 16),
                              ),
                              SizedBox(width: 8),
                              Icon(
                                Icons.add_circle_outline,
                                size: 18,
                                color: Colors.blue,
                              ),
                              Text(
                                'Connect',
                                style:
                                    TextStyle(color: Colors.blue, fontSize: 14),
                              ),
                            ],
                          ),
                          Text(
                            'Aspiring Software Developer | 2nd',
                            style: TextStyle(color: Colors.grey, fontSize: 12),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              // Post Image/Media Section
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    'https://www.linkedin.com/posts/sahil32_shopping-cart-app-excited-to-share-activity-7248674317251624960-Vdvl?utm_source=share&utm_medium=member_desktop', // Replace with actual image URL
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Like, Comment, Repost, Send Section
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.thumb_up_alt_outlined),
                      label: const Text('Like'),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.comment_outlined),
                      label: const Text('Comment'),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.loop),
                      label: const Text('Repost'),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.send_outlined),
                      label: const Text('Send'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
