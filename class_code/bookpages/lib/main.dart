import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

void main() {
  runApp(FlutterBookApp());
}

class FlutterBookApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Book App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(),
    );
  }
}

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context,
          PageTransition(
              type: PageTransitionType.fade, child: BookListScreen()));
    });

    return const Scaffold(
      body: Center(
        child: Text('Flutter Book App', style: TextStyle(fontSize: 24)),
      ),
    );
  }
}

class BookListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Available Books')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('Introduction to Flutter'),
            onTap: () {
              Navigator.push(
                  context,
                  PageTransition(
                      type: PageTransitionType.fade, child: BookPageScreen()));
            },
          ),
        ],
      ),
    );
  }
}

class BookPageScreen extends StatefulWidget {
  @override
  _BookPageScreenState createState() => _BookPageScreenState();
}

class _BookPageScreenState extends State<BookPageScreen> {
  // Page controller to handle page view transitions
  final PageController _pageController = PageController();

  final List<String> _pages = [
    "Page 1: Flutter is an open-source UI toolkit developed by Google. It allows you to build natively compiled applications for mobile, web, and desktop from a single codebase.",
    "Page 2: Flutter uses the Dart programming language, which is easy to learn for developers familiar with other object-oriented languages.",
    "Page 3: Flutter offers widgets, which are the core building blocks of any Flutter application. These widgets allow for customization and flexibility in UI design.",
    "Page 4: Flutter's 'Hot Reload' feature enables developers to see changes in real-time, making the development process faster and more efficient.",
    "Page 5: The Flutter community is growing rapidly, with developers worldwide contributing packages and tools to enhance the Flutter ecosystem."
  ];

  int _currentPage = 0;

  // To navigate to the next page
  void _nextPage() {
    if (_currentPage < _pages.length - 1) {
      _currentPage++;
      _pageController.animateToPage(_currentPage,
          duration: const Duration(milliseconds: 900), curve: Curves.easeOutCubic);
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          child: BookPageScreen(),
        ),
      );
    }
  }

  // To navigate to the previous page
  void _previousPage() {
    if (_currentPage > 0) {
      _currentPage--;
      _pageController.animateToPage(_currentPage,
          duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
      Navigator.push(
        context,
        PageTransition(
          type: PageTransitionType.fade,
          child: BookPageScreen(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Introduction to Flutter')),
      body: PageView.builder(
        controller: _pageController,
        itemCount: _pages.length,
        itemBuilder: (context, index) {
          return _buildPage(_pages[index]);
        },
        onPageChanged: (index) {
          setState(() {
            _currentPage = index;
          });
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: _previousPage,
            child: const Icon(Icons.arrow_back),
          ),
          FloatingActionButton(
            onPressed: _nextPage,
            child: const Icon(Icons.arrow_forward),
          ),
        ],
      ),
    );
  }

  Widget _buildPage(String text) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          text,
          style: const TextStyle(fontSize: 18),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
