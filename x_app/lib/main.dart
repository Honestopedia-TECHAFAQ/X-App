import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  final PageController _pageController = PageController();

  OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: const [
          OnboardingPage(
            title: 'Precise Offline Location',
            description: 'The app uses GPS technology to provide accurate location even when the device is not connected to the internet.',
            imagePath: 'assets/1.png', // Add your image assets
          ),
          OnboardingPage(
            title: 'Simple Navigation',
            description: 'The app\'s interface is intuitive and easy to use. Users can enter starting and destination points, and the app will plot the shortest and most efficient route.',
            imagePath: 'assets/1.png', // Add your image assets
          ),
          // Add more OnboardingPage widgets for additional screens
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const OnboardingPage({super.key, required this.title, required this.description, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 200.0,
          ),
          const SizedBox(height: 20.0),
          Text(
            title,
            style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10.0),
          Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16.0),
          ),
          const SizedBox(height: 30.0), // Add some space between text and button
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, // Background color of the button
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              child: const Text(
                'Get Started',
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
