import 'package:flutter/material.dart';
import 'package:sliding_images/sliding_images.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> imgUrls = [
    "https://p1.pxfuel.com/preview/321/155/730/alpine-bavaria-flowers-germany.jpg",
    "https://p1.pxfuel.com/preview/818/670/574/dogs-chihuahua-rest-small-fur-cozy.jpg",
    "https://p0.pxfuel.com/preview/961/674/322/podcast-coffee-chocolate-cup.jpg",
    "https://p1.pxfuel.com/preview/497/593/209/coffee-winter-warmth-cozy.jpg",
    "https://p1.pxfuel.com/preview/261/554/537/cat-wooden-bench-animal-nature.jpg",
    "https://p1.pxfuel.com/preview/806/13/221/budapest-chain-bridge-danube-hungary-royalty-free-thumbnail.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Plugin Example"),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Minimal Features Example:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SlidingImages(
              imgUrls: imgUrls,
            ),
            SizedBox(height: 20),
            Text(
              "Customized Example 1: Different Image Dimensions & Padding",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SlidingImages(
              imgUrls: imgUrls,
              imageWidth: 250,
              imageHeight: 150,
              padding: EdgeInsets.all(10.0),
            ),
            SizedBox(height: 20),
            Text(
              "Customized Example 2: Auto-play with Custom Indicator",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SlidingImages(
              imgUrls: imgUrls,
              enableAutoPlay: true,
              autoPlayInterval: Duration(seconds: 4),
              customIndicator: CustomIndicator(),
            ),
            SizedBox(height: 20),
            Text(
              "Customized Example 3: Border & Scaling Effects",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SlidingImages(
              imgUrls: imgUrls,
              imageWidth: 350,
              imageHeight: 250,
              border: Border.all(color: Colors.grey, width: 2.0),
              activeSlideScale: 1.1,
              nonActiveSlideScale: 0.9,
            ),
          ],
        ),
      ),
    );
  }
}

class CustomIndicator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement your custom indicator widget
    return Container(
      // Your custom indicator UI here
      width: 10,
      height: 10,
      margin: EdgeInsets.symmetric(horizontal: 2),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.blue,
      ),
    );
  }
}