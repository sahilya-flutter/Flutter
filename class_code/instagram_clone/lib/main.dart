import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => AppState(),
      child: const InstagramCloneApp(),
    ),
  );
}

class InstagramCloneApp extends StatelessWidget {
  const InstagramCloneApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home:const HomeScreen(),
    );
  }
}

class AppState extends ChangeNotifier {
  List<String> stories = List.generate(10, (index) => 'User ${index + 1}');

  List<Map<String, dynamic>> posts = List.generate(
      10,
      (index) => {
            'username': 'user${index + 1}',
            'imageUrl': 'https://picsum.photos/800/${600 + index}',
            'likes': ['fan${index + 1}'],
            'caption': 'This is post ${index + 1} 📸',
            'isLiked': false,
          });

  void toggleLike(int index) {
    posts[index]['isLiked'] = !posts[index]['isLiked'];
    notifyListeners();
  }

  void addStory(String username) {
    stories.add(username);
    notifyListeners();
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram',
            style: TextStyle(
              fontFamily: 'Instagram',
              fontSize: 25,
              fontWeight: FontWeight.bold,
            )),
        actions: [
          IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {}),
          IconButton(icon: const Icon(Icons.send), onPressed: () {}),
        ],
      ),
      body: Consumer<AppState>(
        builder: (context, appState, child) {
          return ListView(
            children: [
              SizedBox(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: appState.stories.length,
                  itemBuilder: (context, index) {
                    return StoryCircle(username: appState.stories[index]);
                  },
                ),
              ),
              ...appState.posts
                  .asMap()
                  .entries
                  .map((entry) =>
                      PostWidget(post: entry.value, index: entry.key))
                  ,
            ],
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Add'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Likes'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

class StoryCircle extends StatelessWidget {
  final String username;

  const StoryCircle({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink, Colors.orange],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: CircleAvatar(
                  backgroundImage: NetworkImage(
                      'https://picsum.photos/80/80?random=$username'),
                ),
              ),
            ),
          ),
          const SizedBox(height: 4),
          Text(username, style: const TextStyle(fontSize: 12)),
        ],
      ),
    );
  }
}

class PostWidget extends StatelessWidget {
  final Map<String, dynamic> post;
  final int index;

  const PostWidget({super.key, required this.post, required this.index});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://picsum.photos/40/40?random=${post['username']}'),
              ),
              const SizedBox(width: 8),
              Text(post['username'],
                  style: const TextStyle(fontWeight: FontWeight.bold)),
            ],
          ),
        ),
        Image.network(
          post['imageUrl'],
          fit: BoxFit.cover,
          width: double.infinity,
          height: 300,
        ),
        Consumer<AppState>(
          builder: (context, appState, child) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      appState.toggleLike(index);
                    },
                    child: Icon(
                      post['isLiked'] ? Icons.favorite : Icons.favorite_border,
                      color: post['isLiked'] ? Colors.red : null,
                    ),
                  ),
                  const SizedBox(width: 8),
                  const Icon(Icons.chat_bubble_outline),
                  const SizedBox(width: 8),
                  const Icon(Icons.send),
                  const Spacer(),
                  const Icon(Icons.bookmark_border),
                ],
              ),
            );
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text('Liked by ${post['likes'].join(', ')} and others'),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: RichText(
            text: TextSpan(
              style: DefaultTextStyle.of(context).style,
              children: [
                TextSpan(
                    text: post['username'] + ' ',
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                TextSpan(text: post['caption']),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

