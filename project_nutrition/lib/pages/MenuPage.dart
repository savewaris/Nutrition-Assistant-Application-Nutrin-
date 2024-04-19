// import 'dart:math';
import 'package:flutter/material.dart';
// import 'dart:async';
import 'package:project_nutrition/pages/HomePage.dart';
import 'package:project_nutrition/pages/RecommendDishPage.dart';

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
      },
    );
  }
}

class MenuPage extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<MenuPage> {
  // final List<String> menuItems = [
  //   "Red Sauce",
  //   "Salmon Don",
  //   "Tomyum",
  // ];

  // final List<String> menuImages = [
  //   "Red Sauce.png",
  //   "Salmon Don.png",
  //   "Tomyum.png",
  // ];

  // int selectedMenuIndex = Random().nextInt(3);

  // late Timer _timer;

  // @override
  // void initState() {
  //   super.initState();
  //   _timer = Timer.periodic(Duration(seconds: 5), (timer) {
  //     setState(() {
  //       selectedMenuIndex = Random().nextInt(3);
  //     });
  //   });
  // }

  // @override
  // void dispose() {
  //   _timer.cancel();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu', style: TextStyle(color: Colors.white)),
        backgroundColor: Color.fromRGBO(0, 145, 191, 1),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: Color.fromRGBO(0, 145, 191, 1),
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    // Or any other button type based on your design preference
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: Text(
                      "Home",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    // Or any other button type based on your design preference
                    onPressed: () {
                      Navigator.pushNamed(context, '/menu');
                    },
                    child: Text(
                      "Menu",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    // Or any other button type based on your design preference
                    onPressed: () {
                      Navigator.pushNamed(context, '/Profile');
                    },
                    child: Text(
                      "Profile",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              onTap: () {
                // Add functionality here
                Navigator.pushNamed(context, '/recdish');
              },
              child: ProductBox(
                  name: "Recommend Dish", image: "Recommend Dish.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              // onTap: () {
              //   // Add functionality here
              //   Navigator.pushNamed(context, '/caloriesinfo');
              // },
              child: ProductBox(name: "Rice", image: "Rice.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              // onTap: () {
              //   // Add functionality here
              //   Navigator.pushNamed(context, '/caloriesinfo');
              // },
              child: ProductBox(name: "Noodles", image: "Noodles.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              // onTap: () {
              //   // Add functionality here
              //   Navigator.pushNamed(context, '/caloriesinfo');
              // },
              child: ProductBox(name: "Steaks", image: "Steaks.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              // onTap: () {
              //   // Add functionality here
              //   Navigator.pushNamed(context, '/caloriesinfo');
              // },
              child: ProductBox(name: "Hamburgers", image: "Hamburgers.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              // onTap: () {
              //   // Add functionality here
              //   Navigator.pushNamed(context, '/caloriesinfo');
              // },
              child: ProductBox(name: "Pasta", image: "Pasta.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              // onTap: () {
              //   // Add functionality here
              //   Navigator.pushNamed(context, '/caloriesinfo');
              // },
              child:
                  ProductBox(name: "Soups/Salads", image: "SoupsAndSalads.png"),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
            ),
            GestureDetector(
              // onTap: () {
              //   // Add functionality here
              //   Navigator.pushNamed(context, '/caloriesinfo');
              // },
              child: ProductBox(name: "Desserts", image: "Desserts.png"),
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
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
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
                image: AssetImage("assets/Menu/" + image),
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
