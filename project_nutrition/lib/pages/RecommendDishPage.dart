import 'dart:math';
import 'package:flutter/material.dart';
import 'package:project_nutrition/pages/CaloriesInfoPage.dart';
import 'dart:async';
import 'package:project_nutrition/pages/HomePage.dart';

// void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomePage(),
        '/recdish': (context) => RecommendDishPage(),
        '/caloriesinfo': (context) => CaloriesInfoPage()
      },
    );
  }
}

class RecommendDishPage extends StatefulWidget {
  @override
  _RecommendDishState createState() => _RecommendDishState();
}

class _RecommendDishState extends State<RecommendDishPage> {
  final List<String> menuItems = [
    "Red Sauce",
    "Salmon Don",
    "Tomyum",
  ];

  final List<String> menuImages = [
    "Red Sauce.png",
    "Salmon Don.png",
    "Tomyum.png",
  ];

  int selectedMenuIndex = Random().nextInt(3);

  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      setState(() {
        selectedMenuIndex = Random().nextInt(3);
      });
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // Handle back button press
            Navigator.pushNamed(context, '/home');
          },
        ),
        title: Text(
          'Recommend Dish',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              onTap: () {
                // Add functionality here
                Navigator.pushNamed(context, '/caloriesinfo');
              },
              child: ProductBox(name: "Red Sauce", image: "Red Sauce.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              onTap: () {
                // Add functionality here
                Navigator.pushNamed(context, '/caloriesinfo');
              },
              child: ProductBox(name: "Salmon Don", image: "Salmon Don.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              onTap: () {
                // Add functionality here
                Navigator.pushNamed(context, '/caloriesinfo');
              },
              child: ProductBox(name: "Tomyum", image: "Tomyum.png"),
            ),
          ],
        ),
      ),
    );
  }
}

class NavBarItem extends StatelessWidget {
  final String title;

  NavBarItem(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.blue,
        ),
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  final String name;
  final String image;

  ProductBox({
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(8),
            width: MediaQuery.of(context).size.width * 0.8,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                image: AssetImage("assets/Home/" + image),
                fit: BoxFit.cover,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: const Color.fromARGB(255, 255, 255, 255),
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    shadows: [
                      Shadow(
                        // Shadow position
                        offset: Offset(2.0, 2.0),
                        // Shadow color
                        color: Colors.black.withOpacity(0.5),
                        // Shadow blur radius
                        blurRadius: 4.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
